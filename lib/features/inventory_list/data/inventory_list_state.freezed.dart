// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InventoryListState _$InventoryListStateFromJson(Map<String, dynamic> json) {
  return _InventoryListState.fromJson(json);
}

/// @nodoc
mixin _$InventoryListState {
  List<Inventory> get inventoryList => throw _privateConstructorUsedError;
  List<Inventory> get selectedNeededList => throw _privateConstructorUsedError;

  /// Serializes this InventoryListState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InventoryListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventoryListStateCopyWith<InventoryListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryListStateCopyWith<$Res> {
  factory $InventoryListStateCopyWith(
          InventoryListState value, $Res Function(InventoryListState) then) =
      _$InventoryListStateCopyWithImpl<$Res, InventoryListState>;
  @useResult
  $Res call(
      {List<Inventory> inventoryList, List<Inventory> selectedNeededList});
}

/// @nodoc
class _$InventoryListStateCopyWithImpl<$Res, $Val extends InventoryListState>
    implements $InventoryListStateCopyWith<$Res> {
  _$InventoryListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventoryList = null,
    Object? selectedNeededList = null,
  }) {
    return _then(_value.copyWith(
      inventoryList: null == inventoryList
          ? _value.inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as List<Inventory>,
      selectedNeededList: null == selectedNeededList
          ? _value.selectedNeededList
          : selectedNeededList // ignore: cast_nullable_to_non_nullable
              as List<Inventory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryListStateImplCopyWith<$Res>
    implements $InventoryListStateCopyWith<$Res> {
  factory _$$InventoryListStateImplCopyWith(_$InventoryListStateImpl value,
          $Res Function(_$InventoryListStateImpl) then) =
      __$$InventoryListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Inventory> inventoryList, List<Inventory> selectedNeededList});
}

/// @nodoc
class __$$InventoryListStateImplCopyWithImpl<$Res>
    extends _$InventoryListStateCopyWithImpl<$Res, _$InventoryListStateImpl>
    implements _$$InventoryListStateImplCopyWith<$Res> {
  __$$InventoryListStateImplCopyWithImpl(_$InventoryListStateImpl _value,
      $Res Function(_$InventoryListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventoryList = null,
    Object? selectedNeededList = null,
  }) {
    return _then(_$InventoryListStateImpl(
      inventoryList: null == inventoryList
          ? _value._inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as List<Inventory>,
      selectedNeededList: null == selectedNeededList
          ? _value._selectedNeededList
          : selectedNeededList // ignore: cast_nullable_to_non_nullable
              as List<Inventory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryListStateImpl implements _InventoryListState {
  const _$InventoryListStateImpl(
      {final List<Inventory> inventoryList = const [],
      final List<Inventory> selectedNeededList = const []})
      : _inventoryList = inventoryList,
        _selectedNeededList = selectedNeededList;

  factory _$InventoryListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryListStateImplFromJson(json);

  final List<Inventory> _inventoryList;
  @override
  @JsonKey()
  List<Inventory> get inventoryList {
    if (_inventoryList is EqualUnmodifiableListView) return _inventoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inventoryList);
  }

  final List<Inventory> _selectedNeededList;
  @override
  @JsonKey()
  List<Inventory> get selectedNeededList {
    if (_selectedNeededList is EqualUnmodifiableListView)
      return _selectedNeededList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedNeededList);
  }

  @override
  String toString() {
    return 'InventoryListState(inventoryList: $inventoryList, selectedNeededList: $selectedNeededList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._inventoryList, _inventoryList) &&
            const DeepCollectionEquality()
                .equals(other._selectedNeededList, _selectedNeededList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_inventoryList),
      const DeepCollectionEquality().hash(_selectedNeededList));

  /// Create a copy of InventoryListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryListStateImplCopyWith<_$InventoryListStateImpl> get copyWith =>
      __$$InventoryListStateImplCopyWithImpl<_$InventoryListStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryListStateImplToJson(
      this,
    );
  }
}

abstract class _InventoryListState implements InventoryListState {
  const factory _InventoryListState(
      {final List<Inventory> inventoryList,
      final List<Inventory> selectedNeededList}) = _$InventoryListStateImpl;

  factory _InventoryListState.fromJson(Map<String, dynamic> json) =
      _$InventoryListStateImpl.fromJson;

  @override
  List<Inventory> get inventoryList;
  @override
  List<Inventory> get selectedNeededList;

  /// Create a copy of InventoryListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryListStateImplCopyWith<_$InventoryListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
