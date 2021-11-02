// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoStateTearOff {
  const _$FavoStateTearOff();

  _FavoState call({List<Contents> data = const []}) {
    return _FavoState(
      data: data,
    );
  }
}

/// @nodoc
const $FavoState = _$FavoStateTearOff();

/// @nodoc
mixin _$FavoState {
  List<Contents> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoStateCopyWith<FavoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoStateCopyWith<$Res> {
  factory $FavoStateCopyWith(FavoState value, $Res Function(FavoState) then) =
      _$FavoStateCopyWithImpl<$Res>;
  $Res call({List<Contents> data});
}

/// @nodoc
class _$FavoStateCopyWithImpl<$Res> implements $FavoStateCopyWith<$Res> {
  _$FavoStateCopyWithImpl(this._value, this._then);

  final FavoState _value;
  // ignore: unused_field
  final $Res Function(FavoState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Contents>,
    ));
  }
}

/// @nodoc
abstract class _$FavoStateCopyWith<$Res> implements $FavoStateCopyWith<$Res> {
  factory _$FavoStateCopyWith(
          _FavoState value, $Res Function(_FavoState) then) =
      __$FavoStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Contents> data});
}

/// @nodoc
class __$FavoStateCopyWithImpl<$Res> extends _$FavoStateCopyWithImpl<$Res>
    implements _$FavoStateCopyWith<$Res> {
  __$FavoStateCopyWithImpl(_FavoState _value, $Res Function(_FavoState) _then)
      : super(_value, (v) => _then(v as _FavoState));

  @override
  _FavoState get _value => super._value as _FavoState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_FavoState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Contents>,
    ));
  }
}

/// @nodoc

class _$_FavoState with DiagnosticableTreeMixin implements _FavoState {
  const _$_FavoState({this.data = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Contents> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoState(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoState'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$FavoStateCopyWith<_FavoState> get copyWith =>
      __$FavoStateCopyWithImpl<_FavoState>(this, _$identity);
}

abstract class _FavoState implements FavoState {
  const factory _FavoState({List<Contents> data}) = _$_FavoState;

  @override
  List<Contents> get data;
  @override
  @JsonKey(ignore: true)
  _$FavoStateCopyWith<_FavoState> get copyWith =>
      throw _privateConstructorUsedError;
}
