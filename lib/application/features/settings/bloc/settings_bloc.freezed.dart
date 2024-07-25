// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String url)
        createConnection,
    required TResult Function(BuildContext context, String url) discontion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String url)? createConnection,
    TResult? Function(BuildContext context, String url)? discontion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String url)? createConnection,
    TResult Function(BuildContext context, String url)? discontion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createConnection value) createConnection,
    required TResult Function(_discontion value) discontion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createConnection value)? createConnection,
    TResult? Function(_discontion value)? discontion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createConnection value)? createConnection,
    TResult Function(_discontion value)? discontion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsEventCopyWith<SettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
  @useResult
  $Res call({BuildContext context, String url});
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$createConnectionImplCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$$createConnectionImplCopyWith(_$createConnectionImpl value,
          $Res Function(_$createConnectionImpl) then) =
      __$$createConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String url});
}

/// @nodoc
class __$$createConnectionImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$createConnectionImpl>
    implements _$$createConnectionImplCopyWith<$Res> {
  __$$createConnectionImplCopyWithImpl(_$createConnectionImpl _value,
      $Res Function(_$createConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? url = null,
  }) {
    return _then(_$createConnectionImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$createConnectionImpl implements _createConnection {
  const _$createConnectionImpl({required this.context, required this.url});

  @override
  final BuildContext context;
  @override
  final String url;

  @override
  String toString() {
    return 'SettingsEvent.createConnection(context: $context, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$createConnectionImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$createConnectionImplCopyWith<_$createConnectionImpl> get copyWith =>
      __$$createConnectionImplCopyWithImpl<_$createConnectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String url)
        createConnection,
    required TResult Function(BuildContext context, String url) discontion,
  }) {
    return createConnection(context, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String url)? createConnection,
    TResult? Function(BuildContext context, String url)? discontion,
  }) {
    return createConnection?.call(context, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String url)? createConnection,
    TResult Function(BuildContext context, String url)? discontion,
    required TResult orElse(),
  }) {
    if (createConnection != null) {
      return createConnection(context, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createConnection value) createConnection,
    required TResult Function(_discontion value) discontion,
  }) {
    return createConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createConnection value)? createConnection,
    TResult? Function(_discontion value)? discontion,
  }) {
    return createConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createConnection value)? createConnection,
    TResult Function(_discontion value)? discontion,
    required TResult orElse(),
  }) {
    if (createConnection != null) {
      return createConnection(this);
    }
    return orElse();
  }
}

abstract class _createConnection implements SettingsEvent {
  const factory _createConnection(
      {required final BuildContext context,
      required final String url}) = _$createConnectionImpl;

  @override
  BuildContext get context;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$createConnectionImplCopyWith<_$createConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$discontionImplCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$$discontionImplCopyWith(
          _$discontionImpl value, $Res Function(_$discontionImpl) then) =
      __$$discontionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String url});
}

/// @nodoc
class __$$discontionImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$discontionImpl>
    implements _$$discontionImplCopyWith<$Res> {
  __$$discontionImplCopyWithImpl(
      _$discontionImpl _value, $Res Function(_$discontionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? url = null,
  }) {
    return _then(_$discontionImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$discontionImpl implements _discontion {
  const _$discontionImpl({required this.context, required this.url});

  @override
  final BuildContext context;
  @override
  final String url;

  @override
  String toString() {
    return 'SettingsEvent.discontion(context: $context, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$discontionImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$discontionImplCopyWith<_$discontionImpl> get copyWith =>
      __$$discontionImplCopyWithImpl<_$discontionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String url)
        createConnection,
    required TResult Function(BuildContext context, String url) discontion,
  }) {
    return discontion(context, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String url)? createConnection,
    TResult? Function(BuildContext context, String url)? discontion,
  }) {
    return discontion?.call(context, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String url)? createConnection,
    TResult Function(BuildContext context, String url)? discontion,
    required TResult orElse(),
  }) {
    if (discontion != null) {
      return discontion(context, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createConnection value) createConnection,
    required TResult Function(_discontion value) discontion,
  }) {
    return discontion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createConnection value)? createConnection,
    TResult? Function(_discontion value)? discontion,
  }) {
    return discontion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createConnection value)? createConnection,
    TResult Function(_discontion value)? discontion,
    required TResult orElse(),
  }) {
    if (discontion != null) {
      return discontion(this);
    }
    return orElse();
  }
}

abstract class _discontion implements SettingsEvent {
  const factory _discontion(
      {required final BuildContext context,
      required final String url}) = _$discontionImpl;

  @override
  BuildContext get context;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$discontionImplCopyWith<_$discontionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  bool get isconnected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({bool isconnected});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isconnected = null,
  }) {
    return _then(_value.copyWith(
      isconnected: null == isconnected
          ? _value.isconnected
          : isconnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isconnected});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isconnected = null,
  }) {
    return _then(_$SettingsStateImpl(
      isconnected: null == isconnected
          ? _value.isconnected
          : isconnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl({required this.isconnected});

  @override
  final bool isconnected;

  @override
  String toString() {
    return 'SettingsState(isconnected: $isconnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.isconnected, isconnected) ||
                other.isconnected == isconnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isconnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState({required final bool isconnected}) =
      _$SettingsStateImpl;

  @override
  bool get isconnected;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
