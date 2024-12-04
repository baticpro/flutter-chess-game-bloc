// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  Player get whitePlayer => throw _privateConstructorUsedError;
  Player get blackPlayer => throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({Player whitePlayer, Player blackPlayer, int difficulty});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whitePlayer = null,
    Object? blackPlayer = null,
    Object? difficulty = null,
  }) {
    return _then(_value.copyWith(
      whitePlayer: null == whitePlayer
          ? _value.whitePlayer
          : whitePlayer // ignore: cast_nullable_to_non_nullable
              as Player,
      blackPlayer: null == blackPlayer
          ? _value.blackPlayer
          : blackPlayer // ignore: cast_nullable_to_non_nullable
              as Player,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({Player whitePlayer, Player blackPlayer, int difficulty});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whitePlayer = null,
    Object? blackPlayer = null,
    Object? difficulty = null,
  }) {
    return _then(_$SettingsStateImpl(
      whitePlayer: null == whitePlayer
          ? _value.whitePlayer
          : whitePlayer // ignore: cast_nullable_to_non_nullable
              as Player,
      blackPlayer: null == blackPlayer
          ? _value.blackPlayer
          : blackPlayer // ignore: cast_nullable_to_non_nullable
              as Player,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl extends _SettingsState {
  const _$SettingsStateImpl(
      {required this.whitePlayer,
      required this.blackPlayer,
      required this.difficulty})
      : super._();

  @override
  final Player whitePlayer;
  @override
  final Player blackPlayer;
  @override
  final int difficulty;

  @override
  String toString() {
    return 'SettingsState(whitePlayer: $whitePlayer, blackPlayer: $blackPlayer, difficulty: $difficulty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.whitePlayer, whitePlayer) ||
                other.whitePlayer == whitePlayer) &&
            (identical(other.blackPlayer, blackPlayer) ||
                other.blackPlayer == blackPlayer) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, whitePlayer, blackPlayer, difficulty);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState extends SettingsState {
  const factory _SettingsState(
      {required final Player whitePlayer,
      required final Player blackPlayer,
      required final int difficulty}) = _$SettingsStateImpl;
  const _SettingsState._() : super._();

  @override
  Player get whitePlayer;
  @override
  Player get blackPlayer;
  @override
  int get difficulty;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
