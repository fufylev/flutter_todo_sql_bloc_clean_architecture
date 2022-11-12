// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_bloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoState extends TodoState {
  @override
  final bool isLoading;
  @override
  final List<TodoEntity> todos;

  factory _$TodoState([void Function(TodoStateBuilder)? updates]) =>
      (new TodoStateBuilder()..update(updates))._build();

  _$TodoState._({required this.isLoading, required this.todos}) : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, r'TodoState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(todos, r'TodoState', 'todos');
  }

  @override
  TodoState rebuild(void Function(TodoStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoStateBuilder toBuilder() => new TodoStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoState &&
        isLoading == other.isLoading &&
        todos == other.todos;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isLoading.hashCode), todos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TodoState')
          ..add('isLoading', isLoading)
          ..add('todos', todos))
        .toString();
  }
}

class TodoStateBuilder implements Builder<TodoState, TodoStateBuilder> {
  _$TodoState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  List<TodoEntity>? _todos;
  List<TodoEntity>? get todos => _$this._todos;
  set todos(List<TodoEntity>? todos) => _$this._todos = todos;

  TodoStateBuilder();

  TodoStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _todos = $v.todos;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoState;
  }

  @override
  void update(void Function(TodoStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodoState build() => _build();

  _$TodoState _build() {
    final _$result = _$v ??
        new _$TodoState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'TodoState', 'isLoading'),
            todos: BuiltValueNullFieldError.checkNotNull(
                todos, r'TodoState', 'todos'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
