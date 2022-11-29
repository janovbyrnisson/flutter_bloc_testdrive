// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsPageEvent {
  int get numOfCards => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numOfCards) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numOfCards)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numOfCards)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsSet value) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsSet value)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsSet value)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsPageEventCopyWith<SettingsPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsPageEventCopyWith<$Res> {
  factory $SettingsPageEventCopyWith(
          SettingsPageEvent value, $Res Function(SettingsPageEvent) then) =
      _$SettingsPageEventCopyWithImpl<$Res, SettingsPageEvent>;
  @useResult
  $Res call({int numOfCards});
}

/// @nodoc
class _$SettingsPageEventCopyWithImpl<$Res, $Val extends SettingsPageEvent>
    implements $SettingsPageEventCopyWith<$Res> {
  _$SettingsPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfCards = null,
  }) {
    return _then(_value.copyWith(
      numOfCards: null == numOfCards
          ? _value.numOfCards
          : numOfCards // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsSetCopyWith<$Res>
    implements $SettingsPageEventCopyWith<$Res> {
  factory _$$_SettingsSetCopyWith(
          _$_SettingsSet value, $Res Function(_$_SettingsSet) then) =
      __$$_SettingsSetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numOfCards});
}

/// @nodoc
class __$$_SettingsSetCopyWithImpl<$Res>
    extends _$SettingsPageEventCopyWithImpl<$Res, _$_SettingsSet>
    implements _$$_SettingsSetCopyWith<$Res> {
  __$$_SettingsSetCopyWithImpl(
      _$_SettingsSet _value, $Res Function(_$_SettingsSet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfCards = null,
  }) {
    return _then(_$_SettingsSet(
      null == numOfCards
          ? _value.numOfCards
          : numOfCards // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SettingsSet implements _SettingsSet {
  const _$_SettingsSet(this.numOfCards);

  @override
  final int numOfCards;

  @override
  String toString() {
    return 'SettingsPageEvent.set(numOfCards: $numOfCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsSet &&
            (identical(other.numOfCards, numOfCards) ||
                other.numOfCards == numOfCards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numOfCards);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsSetCopyWith<_$_SettingsSet> get copyWith =>
      __$$_SettingsSetCopyWithImpl<_$_SettingsSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numOfCards) set,
  }) {
    return set(numOfCards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numOfCards)? set,
  }) {
    return set?.call(numOfCards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numOfCards)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(numOfCards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsSet value) set,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsSet value)? set,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsSet value)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class _SettingsSet implements SettingsPageEvent {
  const factory _SettingsSet(final int numOfCards) = _$_SettingsSet;

  @override
  int get numOfCards;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsSetCopyWith<_$_SettingsSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsPageState {
  int get numberOfCards => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numberOfCards) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numberOfCards)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numberOfCards)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsPageStateCopyWith<SettingsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsPageStateCopyWith<$Res> {
  factory $SettingsPageStateCopyWith(
          SettingsPageState value, $Res Function(SettingsPageState) then) =
      _$SettingsPageStateCopyWithImpl<$Res, SettingsPageState>;
  @useResult
  $Res call({int numberOfCards});
}

/// @nodoc
class _$SettingsPageStateCopyWithImpl<$Res, $Val extends SettingsPageState>
    implements $SettingsPageStateCopyWith<$Res> {
  _$SettingsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfCards = null,
  }) {
    return _then(_value.copyWith(
      numberOfCards: null == numberOfCards
          ? _value.numberOfCards
          : numberOfCards // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsInitialCopyWith<$Res>
    implements $SettingsPageStateCopyWith<$Res> {
  factory _$$_SettingsInitialCopyWith(
          _$_SettingsInitial value, $Res Function(_$_SettingsInitial) then) =
      __$$_SettingsInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numberOfCards});
}

/// @nodoc
class __$$_SettingsInitialCopyWithImpl<$Res>
    extends _$SettingsPageStateCopyWithImpl<$Res, _$_SettingsInitial>
    implements _$$_SettingsInitialCopyWith<$Res> {
  __$$_SettingsInitialCopyWithImpl(
      _$_SettingsInitial _value, $Res Function(_$_SettingsInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfCards = null,
  }) {
    return _then(_$_SettingsInitial(
      numberOfCards: null == numberOfCards
          ? _value.numberOfCards
          : numberOfCards // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SettingsInitial implements _SettingsInitial {
  const _$_SettingsInitial({this.numberOfCards = 4});

  @override
  @JsonKey()
  final int numberOfCards;

  @override
  String toString() {
    return 'SettingsPageState.initial(numberOfCards: $numberOfCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsInitial &&
            (identical(other.numberOfCards, numberOfCards) ||
                other.numberOfCards == numberOfCards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberOfCards);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsInitialCopyWith<_$_SettingsInitial> get copyWith =>
      __$$_SettingsInitialCopyWithImpl<_$_SettingsInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numberOfCards) initial,
  }) {
    return initial(numberOfCards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numberOfCards)? initial,
  }) {
    return initial?.call(numberOfCards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numberOfCards)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(numberOfCards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SettingsInitial implements SettingsPageState {
  const factory _SettingsInitial({final int numberOfCards}) =
      _$_SettingsInitial;

  @override
  int get numberOfCards;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsInitialCopyWith<_$_SettingsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
