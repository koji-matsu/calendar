import 'package:calendar/Provider/table_calendar_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'table_calendar_event_provider.g.dart';

@riverpod
class TableCalendarEventController extends _$TableCalendarEventController {
  final TableCalendarState initState = const TableCalendarState(
    allEventList: [],
    selectedEventList: [],
  );

  @override
  TableCalendarState build() {
    return initState;
  }

  Future<void> readAllEventList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String>? allEventListString = prefs.getStringList('allEventList');
    if (allEventListString != null) {
      final List<Event> allEventList = allEventListString.map((event) {
        List<String> parts = event.split(' - ');
        return Event(title: parts.last, dateTime: DateTime.parse(parts.first));
      }).toList();
      state = state.copyWith(allEventList: allEventList);
    }
  }

  Future<void> addEvent({required DateTime dateTime, required String title}) async {
    final Event newData = Event(title: title, dateTime: dateTime);
    final List<Event> allEventList = state.allEventList + [newData];
    state = state.copyWith(allEventList: allEventList, selectedEventList: state.selectedEventList + [newData]);

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> allEventListToString = allEventList.map((event) => '${event.dateTime} - ${event.title}').toList();
    prefs.setStringList('allEventList', allEventListToString);
  }

  Future<void> deleteEvent({required Event event}) async {
    final List<Event> newAllList = [...List.of(state.allEventList)..removeWhere((e) => e == event)];
    final List<Event> newSelectedEventList = [...List.of(state.selectedEventList)..removeWhere((e) => e == event)];
    state = state.copyWith(allEventList: newAllList, selectedEventList: newSelectedEventList);

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> allEventListToString = newAllList.map((event) => '${event.dateTime} - ${event.title}').toList();
    prefs.setStringList('allEventList', allEventListToString);
  }

  void updateSelectedEventList({required List<Event> list}) {
    state = state.copyWith(selectedEventList: list);
  }
}
