// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) subscribe,
    required TResult Function(String massage, String topic) publish,
    required TResult Function(bool isconnected) getCurrentAppConnectionStatus,
    required TResult Function(BuildContext context) initialMQTTserver,
    required TResult Function(bool isconnected, bool isSubcribed, String topic)
        unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? subscribe,
    TResult? Function(String massage, String topic)? publish,
    TResult? Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult? Function(BuildContext context)? initialMQTTserver,
    TResult? Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? subscribe,
    TResult Function(String massage, String topic)? publish,
    TResult Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult Function(BuildContext context)? initialMQTTserver,
    TResult Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_subscribe value) subscribe,
    required TResult Function(_publish value) publish,
    required TResult Function(_getCurrentAppStatus value)
        getCurrentAppConnectionStatus,
    required TResult Function(_initialMQTTserver value) initialMQTTserver,
    required TResult Function(_unsubscribe value) unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_subscribe value)? subscribe,
    TResult? Function(_publish value)? publish,
    TResult? Function(_getCurrentAppStatus value)?
        getCurrentAppConnectionStatus,
    TResult? Function(_initialMQTTserver value)? initialMQTTserver,
    TResult? Function(_unsubscribe value)? unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_subscribe value)? subscribe,
    TResult Function(_publish value)? publish,
    TResult Function(_getCurrentAppStatus value)? getCurrentAppConnectionStatus,
    TResult Function(_initialMQTTserver value)? initialMQTTserver,
    TResult Function(_unsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$subscribeImplCopyWith<$Res> {
  factory _$$subscribeImplCopyWith(
          _$subscribeImpl value, $Res Function(_$subscribeImpl) then) =
      __$$subscribeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String topic});
}

/// @nodoc
class __$$subscribeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$subscribeImpl>
    implements _$$subscribeImplCopyWith<$Res> {
  __$$subscribeImplCopyWithImpl(
      _$subscribeImpl _value, $Res Function(_$subscribeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$subscribeImpl(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$subscribeImpl implements _subscribe {
  const _$subscribeImpl({required this.topic});

  @override
  final String topic;

  @override
  String toString() {
    return 'HomeEvent.subscribe(topic: $topic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$subscribeImpl &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$subscribeImplCopyWith<_$subscribeImpl> get copyWith =>
      __$$subscribeImplCopyWithImpl<_$subscribeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) subscribe,
    required TResult Function(String massage, String topic) publish,
    required TResult Function(bool isconnected) getCurrentAppConnectionStatus,
    required TResult Function(BuildContext context) initialMQTTserver,
    required TResult Function(bool isconnected, bool isSubcribed, String topic)
        unsubscribe,
  }) {
    return subscribe(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? subscribe,
    TResult? Function(String massage, String topic)? publish,
    TResult? Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult? Function(BuildContext context)? initialMQTTserver,
    TResult? Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
  }) {
    return subscribe?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? subscribe,
    TResult Function(String massage, String topic)? publish,
    TResult Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult Function(BuildContext context)? initialMQTTserver,
    TResult Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_subscribe value) subscribe,
    required TResult Function(_publish value) publish,
    required TResult Function(_getCurrentAppStatus value)
        getCurrentAppConnectionStatus,
    required TResult Function(_initialMQTTserver value) initialMQTTserver,
    required TResult Function(_unsubscribe value) unsubscribe,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_subscribe value)? subscribe,
    TResult? Function(_publish value)? publish,
    TResult? Function(_getCurrentAppStatus value)?
        getCurrentAppConnectionStatus,
    TResult? Function(_initialMQTTserver value)? initialMQTTserver,
    TResult? Function(_unsubscribe value)? unsubscribe,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_subscribe value)? subscribe,
    TResult Function(_publish value)? publish,
    TResult Function(_getCurrentAppStatus value)? getCurrentAppConnectionStatus,
    TResult Function(_initialMQTTserver value)? initialMQTTserver,
    TResult Function(_unsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _subscribe implements HomeEvent {
  const factory _subscribe({required final String topic}) = _$subscribeImpl;

  String get topic;
  @JsonKey(ignore: true)
  _$$subscribeImplCopyWith<_$subscribeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$publishImplCopyWith<$Res> {
  factory _$$publishImplCopyWith(
          _$publishImpl value, $Res Function(_$publishImpl) then) =
      __$$publishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String massage, String topic});
}

/// @nodoc
class __$$publishImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$publishImpl>
    implements _$$publishImplCopyWith<$Res> {
  __$$publishImplCopyWithImpl(
      _$publishImpl _value, $Res Function(_$publishImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? massage = null,
    Object? topic = null,
  }) {
    return _then(_$publishImpl(
      massage: null == massage
          ? _value.massage
          : massage // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$publishImpl implements _publish {
  const _$publishImpl({required this.massage, required this.topic});

  @override
  final String massage;
  @override
  final String topic;

  @override
  String toString() {
    return 'HomeEvent.publish(massage: $massage, topic: $topic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$publishImpl &&
            (identical(other.massage, massage) || other.massage == massage) &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, massage, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$publishImplCopyWith<_$publishImpl> get copyWith =>
      __$$publishImplCopyWithImpl<_$publishImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) subscribe,
    required TResult Function(String massage, String topic) publish,
    required TResult Function(bool isconnected) getCurrentAppConnectionStatus,
    required TResult Function(BuildContext context) initialMQTTserver,
    required TResult Function(bool isconnected, bool isSubcribed, String topic)
        unsubscribe,
  }) {
    return publish(massage, topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? subscribe,
    TResult? Function(String massage, String topic)? publish,
    TResult? Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult? Function(BuildContext context)? initialMQTTserver,
    TResult? Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
  }) {
    return publish?.call(massage, topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? subscribe,
    TResult Function(String massage, String topic)? publish,
    TResult Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult Function(BuildContext context)? initialMQTTserver,
    TResult Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
    required TResult orElse(),
  }) {
    if (publish != null) {
      return publish(massage, topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_subscribe value) subscribe,
    required TResult Function(_publish value) publish,
    required TResult Function(_getCurrentAppStatus value)
        getCurrentAppConnectionStatus,
    required TResult Function(_initialMQTTserver value) initialMQTTserver,
    required TResult Function(_unsubscribe value) unsubscribe,
  }) {
    return publish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_subscribe value)? subscribe,
    TResult? Function(_publish value)? publish,
    TResult? Function(_getCurrentAppStatus value)?
        getCurrentAppConnectionStatus,
    TResult? Function(_initialMQTTserver value)? initialMQTTserver,
    TResult? Function(_unsubscribe value)? unsubscribe,
  }) {
    return publish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_subscribe value)? subscribe,
    TResult Function(_publish value)? publish,
    TResult Function(_getCurrentAppStatus value)? getCurrentAppConnectionStatus,
    TResult Function(_initialMQTTserver value)? initialMQTTserver,
    TResult Function(_unsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (publish != null) {
      return publish(this);
    }
    return orElse();
  }
}

abstract class _publish implements HomeEvent {
  const factory _publish(
      {required final String massage,
      required final String topic}) = _$publishImpl;

  String get massage;
  String get topic;
  @JsonKey(ignore: true)
  _$$publishImplCopyWith<_$publishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getCurrentAppStatusImplCopyWith<$Res> {
  factory _$$getCurrentAppStatusImplCopyWith(_$getCurrentAppStatusImpl value,
          $Res Function(_$getCurrentAppStatusImpl) then) =
      __$$getCurrentAppStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isconnected});
}

/// @nodoc
class __$$getCurrentAppStatusImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$getCurrentAppStatusImpl>
    implements _$$getCurrentAppStatusImplCopyWith<$Res> {
  __$$getCurrentAppStatusImplCopyWithImpl(_$getCurrentAppStatusImpl _value,
      $Res Function(_$getCurrentAppStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isconnected = null,
  }) {
    return _then(_$getCurrentAppStatusImpl(
      isconnected: null == isconnected
          ? _value.isconnected
          : isconnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$getCurrentAppStatusImpl implements _getCurrentAppStatus {
  const _$getCurrentAppStatusImpl({required this.isconnected});

  @override
  final bool isconnected;

  @override
  String toString() {
    return 'HomeEvent.getCurrentAppConnectionStatus(isconnected: $isconnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCurrentAppStatusImpl &&
            (identical(other.isconnected, isconnected) ||
                other.isconnected == isconnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isconnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCurrentAppStatusImplCopyWith<_$getCurrentAppStatusImpl> get copyWith =>
      __$$getCurrentAppStatusImplCopyWithImpl<_$getCurrentAppStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) subscribe,
    required TResult Function(String massage, String topic) publish,
    required TResult Function(bool isconnected) getCurrentAppConnectionStatus,
    required TResult Function(BuildContext context) initialMQTTserver,
    required TResult Function(bool isconnected, bool isSubcribed, String topic)
        unsubscribe,
  }) {
    return getCurrentAppConnectionStatus(isconnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? subscribe,
    TResult? Function(String massage, String topic)? publish,
    TResult? Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult? Function(BuildContext context)? initialMQTTserver,
    TResult? Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
  }) {
    return getCurrentAppConnectionStatus?.call(isconnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? subscribe,
    TResult Function(String massage, String topic)? publish,
    TResult Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult Function(BuildContext context)? initialMQTTserver,
    TResult Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
    required TResult orElse(),
  }) {
    if (getCurrentAppConnectionStatus != null) {
      return getCurrentAppConnectionStatus(isconnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_subscribe value) subscribe,
    required TResult Function(_publish value) publish,
    required TResult Function(_getCurrentAppStatus value)
        getCurrentAppConnectionStatus,
    required TResult Function(_initialMQTTserver value) initialMQTTserver,
    required TResult Function(_unsubscribe value) unsubscribe,
  }) {
    return getCurrentAppConnectionStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_subscribe value)? subscribe,
    TResult? Function(_publish value)? publish,
    TResult? Function(_getCurrentAppStatus value)?
        getCurrentAppConnectionStatus,
    TResult? Function(_initialMQTTserver value)? initialMQTTserver,
    TResult? Function(_unsubscribe value)? unsubscribe,
  }) {
    return getCurrentAppConnectionStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_subscribe value)? subscribe,
    TResult Function(_publish value)? publish,
    TResult Function(_getCurrentAppStatus value)? getCurrentAppConnectionStatus,
    TResult Function(_initialMQTTserver value)? initialMQTTserver,
    TResult Function(_unsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (getCurrentAppConnectionStatus != null) {
      return getCurrentAppConnectionStatus(this);
    }
    return orElse();
  }
}

abstract class _getCurrentAppStatus implements HomeEvent {
  const factory _getCurrentAppStatus({required final bool isconnected}) =
      _$getCurrentAppStatusImpl;

  bool get isconnected;
  @JsonKey(ignore: true)
  _$$getCurrentAppStatusImplCopyWith<_$getCurrentAppStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$initialMQTTserverImplCopyWith<$Res> {
  factory _$$initialMQTTserverImplCopyWith(_$initialMQTTserverImpl value,
          $Res Function(_$initialMQTTserverImpl) then) =
      __$$initialMQTTserverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$initialMQTTserverImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$initialMQTTserverImpl>
    implements _$$initialMQTTserverImplCopyWith<$Res> {
  __$$initialMQTTserverImplCopyWithImpl(_$initialMQTTserverImpl _value,
      $Res Function(_$initialMQTTserverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$initialMQTTserverImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$initialMQTTserverImpl implements _initialMQTTserver {
  const _$initialMQTTserverImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'HomeEvent.initialMQTTserver(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$initialMQTTserverImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$initialMQTTserverImplCopyWith<_$initialMQTTserverImpl> get copyWith =>
      __$$initialMQTTserverImplCopyWithImpl<_$initialMQTTserverImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) subscribe,
    required TResult Function(String massage, String topic) publish,
    required TResult Function(bool isconnected) getCurrentAppConnectionStatus,
    required TResult Function(BuildContext context) initialMQTTserver,
    required TResult Function(bool isconnected, bool isSubcribed, String topic)
        unsubscribe,
  }) {
    return initialMQTTserver(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? subscribe,
    TResult? Function(String massage, String topic)? publish,
    TResult? Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult? Function(BuildContext context)? initialMQTTserver,
    TResult? Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
  }) {
    return initialMQTTserver?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? subscribe,
    TResult Function(String massage, String topic)? publish,
    TResult Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult Function(BuildContext context)? initialMQTTserver,
    TResult Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
    required TResult orElse(),
  }) {
    if (initialMQTTserver != null) {
      return initialMQTTserver(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_subscribe value) subscribe,
    required TResult Function(_publish value) publish,
    required TResult Function(_getCurrentAppStatus value)
        getCurrentAppConnectionStatus,
    required TResult Function(_initialMQTTserver value) initialMQTTserver,
    required TResult Function(_unsubscribe value) unsubscribe,
  }) {
    return initialMQTTserver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_subscribe value)? subscribe,
    TResult? Function(_publish value)? publish,
    TResult? Function(_getCurrentAppStatus value)?
        getCurrentAppConnectionStatus,
    TResult? Function(_initialMQTTserver value)? initialMQTTserver,
    TResult? Function(_unsubscribe value)? unsubscribe,
  }) {
    return initialMQTTserver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_subscribe value)? subscribe,
    TResult Function(_publish value)? publish,
    TResult Function(_getCurrentAppStatus value)? getCurrentAppConnectionStatus,
    TResult Function(_initialMQTTserver value)? initialMQTTserver,
    TResult Function(_unsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (initialMQTTserver != null) {
      return initialMQTTserver(this);
    }
    return orElse();
  }
}

abstract class _initialMQTTserver implements HomeEvent {
  const factory _initialMQTTserver({required final BuildContext context}) =
      _$initialMQTTserverImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$initialMQTTserverImplCopyWith<_$initialMQTTserverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$unsubscribeImplCopyWith<$Res> {
  factory _$$unsubscribeImplCopyWith(
          _$unsubscribeImpl value, $Res Function(_$unsubscribeImpl) then) =
      __$$unsubscribeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isconnected, bool isSubcribed, String topic});
}

/// @nodoc
class __$$unsubscribeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$unsubscribeImpl>
    implements _$$unsubscribeImplCopyWith<$Res> {
  __$$unsubscribeImplCopyWithImpl(
      _$unsubscribeImpl _value, $Res Function(_$unsubscribeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isconnected = null,
    Object? isSubcribed = null,
    Object? topic = null,
  }) {
    return _then(_$unsubscribeImpl(
      isconnected: null == isconnected
          ? _value.isconnected
          : isconnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubcribed: null == isSubcribed
          ? _value.isSubcribed
          : isSubcribed // ignore: cast_nullable_to_non_nullable
              as bool,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$unsubscribeImpl implements _unsubscribe {
  const _$unsubscribeImpl(
      {required this.isconnected,
      required this.isSubcribed,
      required this.topic});

  @override
  final bool isconnected;
  @override
  final bool isSubcribed;
  @override
  final String topic;

  @override
  String toString() {
    return 'HomeEvent.unsubscribe(isconnected: $isconnected, isSubcribed: $isSubcribed, topic: $topic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$unsubscribeImpl &&
            (identical(other.isconnected, isconnected) ||
                other.isconnected == isconnected) &&
            (identical(other.isSubcribed, isSubcribed) ||
                other.isSubcribed == isSubcribed) &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isconnected, isSubcribed, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$unsubscribeImplCopyWith<_$unsubscribeImpl> get copyWith =>
      __$$unsubscribeImplCopyWithImpl<_$unsubscribeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) subscribe,
    required TResult Function(String massage, String topic) publish,
    required TResult Function(bool isconnected) getCurrentAppConnectionStatus,
    required TResult Function(BuildContext context) initialMQTTserver,
    required TResult Function(bool isconnected, bool isSubcribed, String topic)
        unsubscribe,
  }) {
    return unsubscribe(isconnected, isSubcribed, topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? subscribe,
    TResult? Function(String massage, String topic)? publish,
    TResult? Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult? Function(BuildContext context)? initialMQTTserver,
    TResult? Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
  }) {
    return unsubscribe?.call(isconnected, isSubcribed, topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? subscribe,
    TResult Function(String massage, String topic)? publish,
    TResult Function(bool isconnected)? getCurrentAppConnectionStatus,
    TResult Function(BuildContext context)? initialMQTTserver,
    TResult Function(bool isconnected, bool isSubcribed, String topic)?
        unsubscribe,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe(isconnected, isSubcribed, topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_subscribe value) subscribe,
    required TResult Function(_publish value) publish,
    required TResult Function(_getCurrentAppStatus value)
        getCurrentAppConnectionStatus,
    required TResult Function(_initialMQTTserver value) initialMQTTserver,
    required TResult Function(_unsubscribe value) unsubscribe,
  }) {
    return unsubscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_subscribe value)? subscribe,
    TResult? Function(_publish value)? publish,
    TResult? Function(_getCurrentAppStatus value)?
        getCurrentAppConnectionStatus,
    TResult? Function(_initialMQTTserver value)? initialMQTTserver,
    TResult? Function(_unsubscribe value)? unsubscribe,
  }) {
    return unsubscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_subscribe value)? subscribe,
    TResult Function(_publish value)? publish,
    TResult Function(_getCurrentAppStatus value)? getCurrentAppConnectionStatus,
    TResult Function(_initialMQTTserver value)? initialMQTTserver,
    TResult Function(_unsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe(this);
    }
    return orElse();
  }
}

abstract class _unsubscribe implements HomeEvent {
  const factory _unsubscribe(
      {required final bool isconnected,
      required final bool isSubcribed,
      required final String topic}) = _$unsubscribeImpl;

  bool get isconnected;
  bool get isSubcribed;
  String get topic;
  @JsonKey(ignore: true)
  _$$unsubscribeImplCopyWith<_$unsubscribeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<String> get massageList => throw _privateConstructorUsedError;
  bool get isSubcribed => throw _privateConstructorUsedError;
  bool get isconnected => throw _privateConstructorUsedError;
  MqttServerClient? get client => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<String> massageList,
      bool isSubcribed,
      bool isconnected,
      MqttServerClient? client});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? massageList = null,
    Object? isSubcribed = null,
    Object? isconnected = null,
    Object? client = freezed,
  }) {
    return _then(_value.copyWith(
      massageList: null == massageList
          ? _value.massageList
          : massageList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSubcribed: null == isSubcribed
          ? _value.isSubcribed
          : isSubcribed // ignore: cast_nullable_to_non_nullable
              as bool,
      isconnected: null == isconnected
          ? _value.isconnected
          : isconnected // ignore: cast_nullable_to_non_nullable
              as bool,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as MqttServerClient?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> massageList,
      bool isSubcribed,
      bool isconnected,
      MqttServerClient? client});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? massageList = null,
    Object? isSubcribed = null,
    Object? isconnected = null,
    Object? client = freezed,
  }) {
    return _then(_$HomeStateImpl(
      massageList: null == massageList
          ? _value._massageList
          : massageList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSubcribed: null == isSubcribed
          ? _value.isSubcribed
          : isSubcribed // ignore: cast_nullable_to_non_nullable
              as bool,
      isconnected: null == isconnected
          ? _value.isconnected
          : isconnected // ignore: cast_nullable_to_non_nullable
              as bool,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as MqttServerClient?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required final List<String> massageList,
      required this.isSubcribed,
      required this.isconnected,
      this.client})
      : _massageList = massageList;

  final List<String> _massageList;
  @override
  List<String> get massageList {
    if (_massageList is EqualUnmodifiableListView) return _massageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_massageList);
  }

  @override
  final bool isSubcribed;
  @override
  final bool isconnected;
  @override
  final MqttServerClient? client;

  @override
  String toString() {
    return 'HomeState(massageList: $massageList, isSubcribed: $isSubcribed, isconnected: $isconnected, client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._massageList, _massageList) &&
            (identical(other.isSubcribed, isSubcribed) ||
                other.isSubcribed == isSubcribed) &&
            (identical(other.isconnected, isconnected) ||
                other.isconnected == isconnected) &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_massageList),
      isSubcribed,
      isconnected,
      client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<String> massageList,
      required final bool isSubcribed,
      required final bool isconnected,
      final MqttServerClient? client}) = _$HomeStateImpl;

  @override
  List<String> get massageList;
  @override
  bool get isSubcribed;
  @override
  bool get isconnected;
  @override
  MqttServerClient? get client;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
