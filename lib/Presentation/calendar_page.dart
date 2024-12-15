import 'package:calendar/Provider/table_calendar_event_provider.dart';
import 'package:calendar/Provider/table_calendar_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends HookConsumerWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusedDayState = useState(DateTime.now());
    final selectedDayState = useState(DateTime.now());
    final TableCalendarEventController eventProvider = ref.watch(tableCalendarEventControllerProvider.notifier);
    final TableCalendarState eventState = ref.watch(tableCalendarEventControllerProvider);

    useEffect(() {
      // 1度だけ実行したい処理
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        eventProvider.readAllEventList();
      });
      return null;
    }, const []);

    return Column(
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2024, 1, 1),
          lastDay: DateTime.utc(2030, 1, 1),
          focusedDay: focusedDayState.value,
          locale: 'ja_JP',
          availableCalendarFormats: const {CalendarFormat.month: 'Month'},
          selectedDayPredicate: (day) {
            return isSameDay(selectedDayState.value, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            List<Event> selectedEventList = [];
            for (var event in eventState.allEventList) {
              if (event.dateTime == selectedDay) {
                selectedEventList.add(event);
              }
            }
            selectedDayState.value = selectedDay;
            focusedDayState.value = focusedDay;
            eventProvider.updateSelectedEventList(list: selectedEventList);
          },
          onDayLongPressed: (selectedDay, focusedDay) async {
            await showAddEventDialog(context, selectedDay, eventProvider);
          },
          eventLoader: (date) {
            List<Event> selectedEventList = [];
            for (var event in eventState.allEventList) {
              if (event.dateTime == date) {
                selectedEventList.add(event);
              }
            }
            return selectedEventList;
          },
        ),
        SelectedEvent(eventState: eventState, eventProvider: eventProvider),
      ],
    );
  }

  Future<void> showAddEventDialog(BuildContext context, DateTime selectedDay, TableCalendarEventController eventProvider) async {
    final titleController = TextEditingController();

    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'イベントの追加',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: titleController,
                    maxLines: 3,
                    decoration: const InputDecoration(border: OutlineInputBorder(), hintText: '内容'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'キャンセル',
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(context);
                          await eventProvider.addEvent(dateTime: selectedDay, title: titleController.text);
                        },
                        child: const Text(
                          '追加',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SelectedEvent extends StatelessWidget {
  const SelectedEvent({
    super.key,
    required this.eventState,
    required this.eventProvider,
  });

  final TableCalendarState eventState;
  final TableCalendarEventController eventProvider;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: eventState.selectedEventList.length,
        itemBuilder: (context, index) {
          final event = eventState.selectedEventList[index];
          return Card(
            child: ListTile(
              title: Text(event.title),
              subtitle: event.description == null ? null : Text(event.description!),
              trailing: IconButton(
                onPressed: () async {
                  await eventProvider.deleteEvent(event: event);
                },
                icon: const Icon(Icons.delete),
              ),
            ),
          );
        },
      ),
    );
  }
}
