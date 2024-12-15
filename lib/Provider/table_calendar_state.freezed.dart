// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableCalendarState {
  List<Event> get allEventList => throw _privateConstructorUsedError;
  List<Event> get selectedEventList => throw _privateConstructorUsedError;

  /// Create a copy of TableCalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TableCalendarStateCopyWith<TableCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableCalendarStateCopyWith<$Res> {
  factory $TableCalendarStateCopyWith(
          TableCalendarState value, $Res Function(TableCalendarState) then) =
      _$TableCalendarStateCopyWithImpl<$Res, TableCalendarState>;
  @useResult
  $Res call({List<Event> allEventList, List<Event> selectedEventList});
}

/// @nodoc
class _$TableCalendarStateCopyWithImpl<$Res, $Val extends TableCalendarState>
    implements $TableCalendarStateCopyWith<$Res> {
  _$TableCalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TableCalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allEventList = null,
    Object? selectedEventList = null,
  }) {
    return _then(_value.copyWith(
      allEventList: null == allEventList
          ? _value.allEventList
          : allEventList // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      selectedEventList: null == selectedEventList
          ? _value.selectedEventList
          : selectedEventList // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableCalendarStateImplCopyWith<$Res>
    implements $TableCalendarStateCopyWith<$Res> {
  factory _$$TableCalendarStateImplCopyWith(_$TableCalendarStateImpl value,
          $Res Function(_$TableCalendarStateImpl) then) =
      __$$TableCalendarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Event> allEventList, List<Event> selectedEventList});
}

/// @nodoc
class __$$TableCalendarStateImplCopyWithImpl<$Res>
    extends _$TableCalendarStateCopyWithImpl<$Res, _$TableCalendarStateImpl>
    implements _$$TableCalendarStateImplCopyWith<$Res> {
  __$$TableCalendarStateImplCopyWithImpl(_$TableCalendarStateImpl _value,
      $Res Function(_$TableCalendarStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TableCalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allEventList = null,
    Object? selectedEventList = null,
  }) {
    return _then(_$TableCalendarStateImpl(
      allEventList: null == allEventList
          ? _value._allEventList
          : allEventList // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      selectedEventList: null == selectedEventList
          ? _value._selectedEventList
          : selectedEventList // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$TableCalendarStateImpl implements _TableCalendarState {
  const _$TableCalendarStateImpl(
      {required final List<Event> allEventList,
      required final List<Event> selectedEventList})
      : _allEventList = allEventList,
        _selectedEventList = selectedEventList;

  final List<Event> _allEventList;
  @override
  List<Event> get allEventList {
    if (_allEventList is EqualUnmodifiableListView) return _allEventList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allEventList);
  }

  final List<Event> _selectedEventList;
  @override
  List<Event> get selectedEventList {
    if (_selectedEventList is EqualUnmodifiableListView)
      return _selectedEventList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedEventList);
  }

  @override
  String toString() {
    return 'TableCalendarState(allEventList: $allEventList, selectedEventList: $selectedEventList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableCalendarStateImpl &&
            const DeepCollectionEquality()
                .equals(other._allEventList, _allEventList) &&
            const DeepCollectionEquality()
                .equals(other._selectedEventList, _selectedEventList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allEventList),
      const DeepCollectionEquality().hash(_selectedEventList));

  /// Create a copy of TableCalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableCalendarStateImplCopyWith<_$TableCalendarStateImpl> get copyWith =>
      __$$TableCalendarStateImplCopyWithImpl<_$TableCalendarStateImpl>(
          this, _$identity);
}

abstract class _TableCalendarState implements TableCalendarState {
  const factory _TableCalendarState(
      {required final List<Event> allEventList,
      required final List<Event> selectedEventList}) = _$TableCalendarStateImpl;

  @override
  List<Event> get allEventList;
  @override
  List<Event> get selectedEventList;

  /// Create a copy of TableCalendarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableCalendarStateImplCopyWith<_$TableCalendarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call({String title, String? description, DateTime dateTime});
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description, DateTime dateTime});
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? dateTime = null,
  }) {
    return _then(_$EventImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl(
      {required this.title, this.description, required this.dateTime});

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'Event(title: $title, description: $description, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, dateTime);

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {required final String title,
      final String? description,
      required final DateTime dateTime}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  DateTime get dateTime;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
