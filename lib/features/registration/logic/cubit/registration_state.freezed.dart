// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationLoding,
    required TResult Function(T data) registrationSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registrationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationLoding,
    TResult? Function(T data)? registrationSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registrationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationLoding,
    TResult Function(T data)? registrationSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registrationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegistrationLoading<T> value) registrationLoding,
    required TResult Function(RegistrationSuccess<T> value) registrationSuccess,
    required TResult Function(RegistrationError<T> value) registrationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegistrationLoading<T> value)? registrationLoding,
    TResult? Function(RegistrationSuccess<T> value)? registrationSuccess,
    TResult? Function(RegistrationError<T> value)? registrationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegistrationLoading<T> value)? registrationLoding,
    TResult Function(RegistrationSuccess<T> value)? registrationSuccess,
    TResult Function(RegistrationError<T> value)? registrationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<T, $Res> {
  factory $RegistrationStateCopyWith(RegistrationState<T> value,
          $Res Function(RegistrationState<T>) then) =
      _$RegistrationStateCopyWithImpl<T, $Res, RegistrationState<T>>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<T, $Res,
        $Val extends RegistrationState<T>>
    implements $RegistrationStateCopyWith<T, $Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$RegistrationStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegistrationState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationLoding,
    required TResult Function(T data) registrationSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registrationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationLoding,
    TResult? Function(T data)? registrationSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registrationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationLoding,
    TResult Function(T data)? registrationSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registrationError,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegistrationLoading<T> value) registrationLoding,
    required TResult Function(RegistrationSuccess<T> value) registrationSuccess,
    required TResult Function(RegistrationError<T> value) registrationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegistrationLoading<T> value)? registrationLoding,
    TResult? Function(RegistrationSuccess<T> value)? registrationSuccess,
    TResult? Function(RegistrationError<T> value)? registrationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegistrationLoading<T> value)? registrationLoding,
    TResult Function(RegistrationSuccess<T> value)? registrationSuccess,
    TResult Function(RegistrationError<T> value)? registrationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements RegistrationState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$RegistrationLoadingImplCopyWith<T, $Res> {
  factory _$$RegistrationLoadingImplCopyWith(_$RegistrationLoadingImpl<T> value,
          $Res Function(_$RegistrationLoadingImpl<T>) then) =
      __$$RegistrationLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RegistrationLoadingImplCopyWithImpl<T, $Res>
    extends _$RegistrationStateCopyWithImpl<T, $Res,
        _$RegistrationLoadingImpl<T>>
    implements _$$RegistrationLoadingImplCopyWith<T, $Res> {
  __$$RegistrationLoadingImplCopyWithImpl(_$RegistrationLoadingImpl<T> _value,
      $Res Function(_$RegistrationLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationLoadingImpl<T> implements RegistrationLoading<T> {
  const _$RegistrationLoadingImpl();

  @override
  String toString() {
    return 'RegistrationState<$T>.registrationLoding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationLoding,
    required TResult Function(T data) registrationSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registrationError,
  }) {
    return registrationLoding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationLoding,
    TResult? Function(T data)? registrationSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registrationError,
  }) {
    return registrationLoding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationLoding,
    TResult Function(T data)? registrationSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registrationError,
    required TResult orElse(),
  }) {
    if (registrationLoding != null) {
      return registrationLoding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegistrationLoading<T> value) registrationLoding,
    required TResult Function(RegistrationSuccess<T> value) registrationSuccess,
    required TResult Function(RegistrationError<T> value) registrationError,
  }) {
    return registrationLoding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegistrationLoading<T> value)? registrationLoding,
    TResult? Function(RegistrationSuccess<T> value)? registrationSuccess,
    TResult? Function(RegistrationError<T> value)? registrationError,
  }) {
    return registrationLoding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegistrationLoading<T> value)? registrationLoding,
    TResult Function(RegistrationSuccess<T> value)? registrationSuccess,
    TResult Function(RegistrationError<T> value)? registrationError,
    required TResult orElse(),
  }) {
    if (registrationLoding != null) {
      return registrationLoding(this);
    }
    return orElse();
  }
}

abstract class RegistrationLoading<T> implements RegistrationState<T> {
  const factory RegistrationLoading() = _$RegistrationLoadingImpl<T>;
}

/// @nodoc
abstract class _$$RegistrationSuccessImplCopyWith<T, $Res> {
  factory _$$RegistrationSuccessImplCopyWith(_$RegistrationSuccessImpl<T> value,
          $Res Function(_$RegistrationSuccessImpl<T>) then) =
      __$$RegistrationSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$RegistrationSuccessImplCopyWithImpl<T, $Res>
    extends _$RegistrationStateCopyWithImpl<T, $Res,
        _$RegistrationSuccessImpl<T>>
    implements _$$RegistrationSuccessImplCopyWith<T, $Res> {
  __$$RegistrationSuccessImplCopyWithImpl(_$RegistrationSuccessImpl<T> _value,
      $Res Function(_$RegistrationSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RegistrationSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RegistrationSuccessImpl<T> implements RegistrationSuccess<T> {
  const _$RegistrationSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'RegistrationState<$T>.registrationSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationSuccessImplCopyWith<T, _$RegistrationSuccessImpl<T>>
      get copyWith => __$$RegistrationSuccessImplCopyWithImpl<T,
          _$RegistrationSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationLoding,
    required TResult Function(T data) registrationSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registrationError,
  }) {
    return registrationSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationLoding,
    TResult? Function(T data)? registrationSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registrationError,
  }) {
    return registrationSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationLoding,
    TResult Function(T data)? registrationSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registrationError,
    required TResult orElse(),
  }) {
    if (registrationSuccess != null) {
      return registrationSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegistrationLoading<T> value) registrationLoding,
    required TResult Function(RegistrationSuccess<T> value) registrationSuccess,
    required TResult Function(RegistrationError<T> value) registrationError,
  }) {
    return registrationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegistrationLoading<T> value)? registrationLoding,
    TResult? Function(RegistrationSuccess<T> value)? registrationSuccess,
    TResult? Function(RegistrationError<T> value)? registrationError,
  }) {
    return registrationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegistrationLoading<T> value)? registrationLoding,
    TResult Function(RegistrationSuccess<T> value)? registrationSuccess,
    TResult Function(RegistrationError<T> value)? registrationError,
    required TResult orElse(),
  }) {
    if (registrationSuccess != null) {
      return registrationSuccess(this);
    }
    return orElse();
  }
}

abstract class RegistrationSuccess<T> implements RegistrationState<T> {
  const factory RegistrationSuccess(final T data) =
      _$RegistrationSuccessImpl<T>;

  T get data;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationSuccessImplCopyWith<T, _$RegistrationSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationErrorImplCopyWith<T, $Res> {
  factory _$$RegistrationErrorImplCopyWith(_$RegistrationErrorImpl<T> value,
          $Res Function(_$RegistrationErrorImpl<T>) then) =
      __$$RegistrationErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$RegistrationErrorImplCopyWithImpl<T, $Res>
    extends _$RegistrationStateCopyWithImpl<T, $Res, _$RegistrationErrorImpl<T>>
    implements _$$RegistrationErrorImplCopyWith<T, $Res> {
  __$$RegistrationErrorImplCopyWithImpl(_$RegistrationErrorImpl<T> _value,
      $Res Function(_$RegistrationErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$RegistrationErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$RegistrationErrorImpl<T> implements RegistrationError<T> {
  const _$RegistrationErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'RegistrationState<$T>.registrationError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationErrorImplCopyWith<T, _$RegistrationErrorImpl<T>>
      get copyWith =>
          __$$RegistrationErrorImplCopyWithImpl<T, _$RegistrationErrorImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationLoding,
    required TResult Function(T data) registrationSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registrationError,
  }) {
    return registrationError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationLoding,
    TResult? Function(T data)? registrationSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registrationError,
  }) {
    return registrationError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationLoding,
    TResult Function(T data)? registrationSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registrationError,
    required TResult orElse(),
  }) {
    if (registrationError != null) {
      return registrationError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegistrationLoading<T> value) registrationLoding,
    required TResult Function(RegistrationSuccess<T> value) registrationSuccess,
    required TResult Function(RegistrationError<T> value) registrationError,
  }) {
    return registrationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegistrationLoading<T> value)? registrationLoding,
    TResult? Function(RegistrationSuccess<T> value)? registrationSuccess,
    TResult? Function(RegistrationError<T> value)? registrationError,
  }) {
    return registrationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegistrationLoading<T> value)? registrationLoding,
    TResult Function(RegistrationSuccess<T> value)? registrationSuccess,
    TResult Function(RegistrationError<T> value)? registrationError,
    required TResult orElse(),
  }) {
    if (registrationError != null) {
      return registrationError(this);
    }
    return orElse();
  }
}

abstract class RegistrationError<T> implements RegistrationState<T> {
  const factory RegistrationError(final ApiErrorModel apiErrorModel) =
      _$RegistrationErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationErrorImplCopyWith<T, _$RegistrationErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
