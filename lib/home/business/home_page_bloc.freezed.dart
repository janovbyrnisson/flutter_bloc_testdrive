// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageEvent {
  int get numOfCards => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numOfCards) getCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numOfCards)? getCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numOfCards)? getCards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageGetCards value) getCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageGetCards value)? getCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageGetCards value)? getCards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageEventCopyWith<HomePageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res, HomePageEvent>;
  @useResult
  $Res call({int numOfCards});
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res, $Val extends HomePageEvent>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

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
abstract class _$$HomePageGetCardsCopyWith<$Res>
    implements $HomePageEventCopyWith<$Res> {
  factory _$$HomePageGetCardsCopyWith(
          _$HomePageGetCards value, $Res Function(_$HomePageGetCards) then) =
      __$$HomePageGetCardsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numOfCards});
}

/// @nodoc
class __$$HomePageGetCardsCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$HomePageGetCards>
    implements _$$HomePageGetCardsCopyWith<$Res> {
  __$$HomePageGetCardsCopyWithImpl(
      _$HomePageGetCards _value, $Res Function(_$HomePageGetCards) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfCards = null,
  }) {
    return _then(_$HomePageGetCards(
      null == numOfCards
          ? _value.numOfCards
          : numOfCards // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomePageGetCards implements HomePageGetCards {
  const _$HomePageGetCards(this.numOfCards);

  @override
  final int numOfCards;

  @override
  String toString() {
    return 'HomePageEvent.getCards(numOfCards: $numOfCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageGetCards &&
            (identical(other.numOfCards, numOfCards) ||
                other.numOfCards == numOfCards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numOfCards);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageGetCardsCopyWith<_$HomePageGetCards> get copyWith =>
      __$$HomePageGetCardsCopyWithImpl<_$HomePageGetCards>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numOfCards) getCards,
  }) {
    return getCards(numOfCards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numOfCards)? getCards,
  }) {
    return getCards?.call(numOfCards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numOfCards)? getCards,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards(numOfCards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageGetCards value) getCards,
  }) {
    return getCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageGetCards value)? getCards,
  }) {
    return getCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageGetCards value)? getCards,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards(this);
    }
    return orElse();
  }
}

abstract class HomePageGetCards implements HomePageEvent {
  const factory HomePageGetCards(final int numOfCards) = _$HomePageGetCards;

  @override
  int get numOfCards;
  @override
  @JsonKey(ignore: true)
  _$$HomePageGetCardsCopyWith<_$HomePageGetCards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Joke> jokes) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Joke> jokes)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Joke> jokes)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePageIntial value) initial,
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageError value) error,
    required TResult Function(HomePageSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePageIntial value)? initial,
    TResult? Function(HomePageLoading value)? loading,
    TResult? Function(HomePageError value)? error,
    TResult? Function(HomePageSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePageIntial value)? initial,
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageError value)? error,
    TResult Function(HomePageSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomePageIntialCopyWith<$Res> {
  factory _$$_HomePageIntialCopyWith(
          _$_HomePageIntial value, $Res Function(_$_HomePageIntial) then) =
      __$$_HomePageIntialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomePageIntialCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$_HomePageIntial>
    implements _$$_HomePageIntialCopyWith<$Res> {
  __$$_HomePageIntialCopyWithImpl(
      _$_HomePageIntial _value, $Res Function(_$_HomePageIntial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomePageIntial implements _HomePageIntial {
  const _$_HomePageIntial();

  @override
  String toString() {
    return 'HomePageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomePageIntial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Joke> jokes) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Joke> jokes)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Joke> jokes)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePageIntial value) initial,
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageError value) error,
    required TResult Function(HomePageSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePageIntial value)? initial,
    TResult? Function(HomePageLoading value)? loading,
    TResult? Function(HomePageError value)? error,
    TResult? Function(HomePageSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePageIntial value)? initial,
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageError value)? error,
    TResult Function(HomePageSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomePageIntial implements HomePageState {
  const factory _HomePageIntial() = _$_HomePageIntial;
}

/// @nodoc
abstract class _$$HomePageLoadingCopyWith<$Res> {
  factory _$$HomePageLoadingCopyWith(
          _$HomePageLoading value, $Res Function(_$HomePageLoading) then) =
      __$$HomePageLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePageLoadingCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageLoading>
    implements _$$HomePageLoadingCopyWith<$Res> {
  __$$HomePageLoadingCopyWithImpl(
      _$HomePageLoading _value, $Res Function(_$HomePageLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomePageLoading implements HomePageLoading {
  const _$HomePageLoading();

  @override
  String toString() {
    return 'HomePageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePageLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Joke> jokes) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Joke> jokes)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Joke> jokes)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePageIntial value) initial,
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageError value) error,
    required TResult Function(HomePageSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePageIntial value)? initial,
    TResult? Function(HomePageLoading value)? loading,
    TResult? Function(HomePageError value)? error,
    TResult? Function(HomePageSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePageIntial value)? initial,
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageError value)? error,
    TResult Function(HomePageSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomePageLoading implements HomePageState {
  const factory HomePageLoading() = _$HomePageLoading;
}

/// @nodoc
abstract class _$$HomePageErrorCopyWith<$Res> {
  factory _$$HomePageErrorCopyWith(
          _$HomePageError value, $Res Function(_$HomePageError) then) =
      __$$HomePageErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HomePageErrorCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageError>
    implements _$$HomePageErrorCopyWith<$Res> {
  __$$HomePageErrorCopyWithImpl(
      _$HomePageError _value, $Res Function(_$HomePageError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HomePageError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomePageError implements HomePageError {
  const _$HomePageError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomePageState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageErrorCopyWith<_$HomePageError> get copyWith =>
      __$$HomePageErrorCopyWithImpl<_$HomePageError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Joke> jokes) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Joke> jokes)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Joke> jokes)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePageIntial value) initial,
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageError value) error,
    required TResult Function(HomePageSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePageIntial value)? initial,
    TResult? Function(HomePageLoading value)? loading,
    TResult? Function(HomePageError value)? error,
    TResult? Function(HomePageSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePageIntial value)? initial,
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageError value)? error,
    TResult Function(HomePageSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomePageError implements HomePageState {
  const factory HomePageError(final String message) = _$HomePageError;

  String get message;
  @JsonKey(ignore: true)
  _$$HomePageErrorCopyWith<_$HomePageError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomePageSuccessCopyWith<$Res> {
  factory _$$HomePageSuccessCopyWith(
          _$HomePageSuccess value, $Res Function(_$HomePageSuccess) then) =
      __$$HomePageSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Joke> jokes});
}

/// @nodoc
class __$$HomePageSuccessCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageSuccess>
    implements _$$HomePageSuccessCopyWith<$Res> {
  __$$HomePageSuccessCopyWithImpl(
      _$HomePageSuccess _value, $Res Function(_$HomePageSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jokes = null,
  }) {
    return _then(_$HomePageSuccess(
      null == jokes
          ? _value._jokes
          : jokes // ignore: cast_nullable_to_non_nullable
              as List<Joke>,
    ));
  }
}

/// @nodoc

class _$HomePageSuccess implements HomePageSuccess {
  const _$HomePageSuccess(final List<Joke> jokes) : _jokes = jokes;

  final List<Joke> _jokes;
  @override
  List<Joke> get jokes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jokes);
  }

  @override
  String toString() {
    return 'HomePageState.success(jokes: $jokes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageSuccess &&
            const DeepCollectionEquality().equals(other._jokes, _jokes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jokes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageSuccessCopyWith<_$HomePageSuccess> get copyWith =>
      __$$HomePageSuccessCopyWithImpl<_$HomePageSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Joke> jokes) success,
  }) {
    return success(jokes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Joke> jokes)? success,
  }) {
    return success?.call(jokes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Joke> jokes)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(jokes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePageIntial value) initial,
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageError value) error,
    required TResult Function(HomePageSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePageIntial value)? initial,
    TResult? Function(HomePageLoading value)? loading,
    TResult? Function(HomePageError value)? error,
    TResult? Function(HomePageSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePageIntial value)? initial,
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageError value)? error,
    TResult Function(HomePageSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HomePageSuccess implements HomePageState {
  const factory HomePageSuccess(final List<Joke> jokes) = _$HomePageSuccess;

  List<Joke> get jokes;
  @JsonKey(ignore: true)
  _$$HomePageSuccessCopyWith<_$HomePageSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
