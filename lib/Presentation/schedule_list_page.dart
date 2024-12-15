import 'package:calendar/Provider/table_calendar_event_provider.dart';
import 'package:calendar/Provider/table_calendar_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class ScheduleListPage extends HookConsumerWidget {
  const ScheduleListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TableCalendarEventController eventProvider = ref.watch(tableCalendarEventControllerProvider.notifier);
    final TableCalendarState eventState = ref.watch(tableCalendarEventControllerProvider);

    return Column(
      children: [
        AllEvent(eventState: eventState, eventProvider: eventProvider),
      ],
    );
  }
}

class AllEvent extends StatelessWidget {
  const AllEvent({
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
        itemCount: eventState.allEventList.length,
        itemBuilder: (context, index) {
          final event = eventState.allEventList[index];
          return Card(
            child: ListTile(
              title: Text('[${DateFormat('yyyy年M月d日').format(event.dateTime)}]\n${event.title}'),
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
