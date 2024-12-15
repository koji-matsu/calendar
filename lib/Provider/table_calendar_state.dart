import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_calendar_state.freezed.dart';
part 'table_calendar_state.g.dart';

@freezed
class TableCalendarState with _$TableCalendarState {
  const factory TableCalendarState({
    required List<Event> allEventList,
    required List<Event> selectedEventList,
  }) = _TableCalendarState;
}

@freezed
class Event with _$Event {
  const factory Event({
    required String title,
    required DateTime dateTime,
  }) = _Event;

  factory Event.fromJson(Map<String, Event> json) => _$EventFromJson(json);
}
