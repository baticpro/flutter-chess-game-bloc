// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameState {
  Board get board => throw _privateConstructorUsedError;
  Cell? get selectedCell => throw _privateConstructorUsedError;
  Set<String> get availablePositionsHash => throw _privateConstructorUsedError;
  GameColors get activeColor => throw _privateConstructorUsedError;
  bool get isAIthinking => throw _privateConstructorUsedError;
  List<Figure> get blackLost => throw _privateConstructorUsedError;
  List<Figure> get whiteLost => throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {Board board,
      Cell? selectedCell,
      Set<String> availablePositionsHash,
      GameColors activeColor,
      bool isAIthinking,
      List<Figure> blackLost,
      List<Figure> whiteLost});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? selectedCell = freezed,
    Object? availablePositionsHash = null,
    Object? activeColor = null,
    Object? isAIthinking = null,
    Object? blackLost = null,
    Object? whiteLost = null,
  }) {
    return _then(_value.copyWith(
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      selectedCell: freezed == selectedCell
          ? _value.selectedCell
          : selectedCell // ignore: cast_nullable_to_non_nullable
              as Cell?,
      availablePositionsHash: null == availablePositionsHash
          ? _value.availablePositionsHash
          : availablePositionsHash // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      activeColor: null == activeColor
          ? _value.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as GameColors,
      isAIthinking: null == isAIthinking
          ? _value.isAIthinking
          : isAIthinking // ignore: cast_nullable_to_non_nullable
              as bool,
      blackLost: null == blackLost
          ? _value.blackLost
          : blackLost // ignore: cast_nullable_to_non_nullable
              as List<Figure>,
      whiteLost: null == whiteLost
          ? _value.whiteLost
          : whiteLost // ignore: cast_nullable_to_non_nullable
              as List<Figure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Board board,
      Cell? selectedCell,
      Set<String> availablePositionsHash,
      GameColors activeColor,
      bool isAIthinking,
      List<Figure> blackLost,
      List<Figure> whiteLost});
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? selectedCell = freezed,
    Object? availablePositionsHash = null,
    Object? activeColor = null,
    Object? isAIthinking = null,
    Object? blackLost = null,
    Object? whiteLost = null,
  }) {
    return _then(_$GameStateImpl(
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      selectedCell: freezed == selectedCell
          ? _value.selectedCell
          : selectedCell // ignore: cast_nullable_to_non_nullable
              as Cell?,
      availablePositionsHash: null == availablePositionsHash
          ? _value._availablePositionsHash
          : availablePositionsHash // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      activeColor: null == activeColor
          ? _value.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as GameColors,
      isAIthinking: null == isAIthinking
          ? _value.isAIthinking
          : isAIthinking // ignore: cast_nullable_to_non_nullable
              as bool,
      blackLost: null == blackLost
          ? _value._blackLost
          : blackLost // ignore: cast_nullable_to_non_nullable
              as List<Figure>,
      whiteLost: null == whiteLost
          ? _value._whiteLost
          : whiteLost // ignore: cast_nullable_to_non_nullable
              as List<Figure>,
    ));
  }
}

/// @nodoc

class _$GameStateImpl extends _GameState {
  const _$GameStateImpl(
      {required this.board,
      required this.selectedCell,
      required final Set<String> availablePositionsHash,
      required this.activeColor,
      required this.isAIthinking,
      required final List<Figure> blackLost,
      required final List<Figure> whiteLost})
      : _availablePositionsHash = availablePositionsHash,
        _blackLost = blackLost,
        _whiteLost = whiteLost,
        super._();

  @override
  final Board board;
  @override
  final Cell? selectedCell;
  final Set<String> _availablePositionsHash;
  @override
  Set<String> get availablePositionsHash {
    if (_availablePositionsHash is EqualUnmodifiableSetView)
      return _availablePositionsHash;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_availablePositionsHash);
  }

  @override
  final GameColors activeColor;
  @override
  final bool isAIthinking;
  final List<Figure> _blackLost;
  @override
  List<Figure> get blackLost {
    if (_blackLost is EqualUnmodifiableListView) return _blackLost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blackLost);
  }

  final List<Figure> _whiteLost;
  @override
  List<Figure> get whiteLost {
    if (_whiteLost is EqualUnmodifiableListView) return _whiteLost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_whiteLost);
  }

  @override
  String toString() {
    return 'GameState(board: $board, selectedCell: $selectedCell, availablePositionsHash: $availablePositionsHash, activeColor: $activeColor, isAIthinking: $isAIthinking, blackLost: $blackLost, whiteLost: $whiteLost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.selectedCell, selectedCell) ||
                other.selectedCell == selectedCell) &&
            const DeepCollectionEquality().equals(
                other._availablePositionsHash, _availablePositionsHash) &&
            (identical(other.activeColor, activeColor) ||
                other.activeColor == activeColor) &&
            (identical(other.isAIthinking, isAIthinking) ||
                other.isAIthinking == isAIthinking) &&
            const DeepCollectionEquality()
                .equals(other._blackLost, _blackLost) &&
            const DeepCollectionEquality()
                .equals(other._whiteLost, _whiteLost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      board,
      selectedCell,
      const DeepCollectionEquality().hash(_availablePositionsHash),
      activeColor,
      isAIthinking,
      const DeepCollectionEquality().hash(_blackLost),
      const DeepCollectionEquality().hash(_whiteLost));

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);
}

abstract class _GameState extends GameState {
  const factory _GameState(
      {required final Board board,
      required final Cell? selectedCell,
      required final Set<String> availablePositionsHash,
      required final GameColors activeColor,
      required final bool isAIthinking,
      required final List<Figure> blackLost,
      required final List<Figure> whiteLost}) = _$GameStateImpl;
  const _GameState._() : super._();

  @override
  Board get board;
  @override
  Cell? get selectedCell;
  @override
  Set<String> get availablePositionsHash;
  @override
  GameColors get activeColor;
  @override
  bool get isAIthinking;
  @override
  List<Figure> get blackLost;
  @override
  List<Figure> get whiteLost;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
