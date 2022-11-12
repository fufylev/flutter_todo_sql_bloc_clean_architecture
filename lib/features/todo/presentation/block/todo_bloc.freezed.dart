// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodosFromDB,
    required TResult Function(TodoEntity todo) addTodo,
    required TResult Function(TodoEntity todo) deleteTodo,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function() subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodosFromDB,
    TResult? Function(TodoEntity todo)? addTodo,
    TResult? Function(TodoEntity todo)? deleteTodo,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function()? subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodosFromDB,
    TResult Function(TodoEntity todo)? addTodo,
    TResult Function(TodoEntity todo)? deleteTodo,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosFromDBEvent value) getTodosFromDB,
    required TResult Function(AddTodoEvent value) addTodo,
    required TResult Function(DeleteTodoEvent value) deleteTodo,
    required TResult Function(UpdateTodoEvent value) updateTodo,
    required TResult Function(SubscribeEvent value) subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult? Function(AddTodoEvent value)? addTodo,
    TResult? Function(DeleteTodoEvent value)? deleteTodo,
    TResult? Function(UpdateTodoEvent value)? updateTodo,
    TResult? Function(SubscribeEvent value)? subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult Function(AddTodoEvent value)? addTodo,
    TResult Function(DeleteTodoEvent value)? deleteTodo,
    TResult Function(UpdateTodoEvent value)? updateTodo,
    TResult Function(SubscribeEvent value)? subscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosEventCopyWith<$Res> {
  factory $TodosEventCopyWith(
          TodosEvent value, $Res Function(TodosEvent) then) =
      _$TodosEventCopyWithImpl<$Res, TodosEvent>;
}

/// @nodoc
class _$TodosEventCopyWithImpl<$Res, $Val extends TodosEvent>
    implements $TodosEventCopyWith<$Res> {
  _$TodosEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTodosFromDBEventCopyWith<$Res> {
  factory _$$GetTodosFromDBEventCopyWith(_$GetTodosFromDBEvent value,
          $Res Function(_$GetTodosFromDBEvent) then) =
      __$$GetTodosFromDBEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTodosFromDBEventCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$GetTodosFromDBEvent>
    implements _$$GetTodosFromDBEventCopyWith<$Res> {
  __$$GetTodosFromDBEventCopyWithImpl(
      _$GetTodosFromDBEvent _value, $Res Function(_$GetTodosFromDBEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTodosFromDBEvent implements GetTodosFromDBEvent {
  const _$GetTodosFromDBEvent();

  @override
  String toString() {
    return 'TodosEvent.getTodosFromDB()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTodosFromDBEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodosFromDB,
    required TResult Function(TodoEntity todo) addTodo,
    required TResult Function(TodoEntity todo) deleteTodo,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function() subscribe,
  }) {
    return getTodosFromDB();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodosFromDB,
    TResult? Function(TodoEntity todo)? addTodo,
    TResult? Function(TodoEntity todo)? deleteTodo,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function()? subscribe,
  }) {
    return getTodosFromDB?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodosFromDB,
    TResult Function(TodoEntity todo)? addTodo,
    TResult Function(TodoEntity todo)? deleteTodo,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (getTodosFromDB != null) {
      return getTodosFromDB();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosFromDBEvent value) getTodosFromDB,
    required TResult Function(AddTodoEvent value) addTodo,
    required TResult Function(DeleteTodoEvent value) deleteTodo,
    required TResult Function(UpdateTodoEvent value) updateTodo,
    required TResult Function(SubscribeEvent value) subscribe,
  }) {
    return getTodosFromDB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult? Function(AddTodoEvent value)? addTodo,
    TResult? Function(DeleteTodoEvent value)? deleteTodo,
    TResult? Function(UpdateTodoEvent value)? updateTodo,
    TResult? Function(SubscribeEvent value)? subscribe,
  }) {
    return getTodosFromDB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult Function(AddTodoEvent value)? addTodo,
    TResult Function(DeleteTodoEvent value)? deleteTodo,
    TResult Function(UpdateTodoEvent value)? updateTodo,
    TResult Function(SubscribeEvent value)? subscribe,
    required TResult orElse(),
  }) {
    if (getTodosFromDB != null) {
      return getTodosFromDB(this);
    }
    return orElse();
  }
}

abstract class GetTodosFromDBEvent implements TodosEvent {
  const factory GetTodosFromDBEvent() = _$GetTodosFromDBEvent;
}

/// @nodoc
abstract class _$$AddTodoEventCopyWith<$Res> {
  factory _$$AddTodoEventCopyWith(
          _$AddTodoEvent value, $Res Function(_$AddTodoEvent) then) =
      __$$AddTodoEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity todo});
}

/// @nodoc
class __$$AddTodoEventCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$AddTodoEvent>
    implements _$$AddTodoEventCopyWith<$Res> {
  __$$AddTodoEventCopyWithImpl(
      _$AddTodoEvent _value, $Res Function(_$AddTodoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$AddTodoEvent(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoEntity,
    ));
  }
}

/// @nodoc

class _$AddTodoEvent implements AddTodoEvent {
  const _$AddTodoEvent(this.todo);

  @override
  final TodoEntity todo;

  @override
  String toString() {
    return 'TodosEvent.addTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoEvent &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoEventCopyWith<_$AddTodoEvent> get copyWith =>
      __$$AddTodoEventCopyWithImpl<_$AddTodoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodosFromDB,
    required TResult Function(TodoEntity todo) addTodo,
    required TResult Function(TodoEntity todo) deleteTodo,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function() subscribe,
  }) {
    return addTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodosFromDB,
    TResult? Function(TodoEntity todo)? addTodo,
    TResult? Function(TodoEntity todo)? deleteTodo,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function()? subscribe,
  }) {
    return addTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodosFromDB,
    TResult Function(TodoEntity todo)? addTodo,
    TResult Function(TodoEntity todo)? deleteTodo,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosFromDBEvent value) getTodosFromDB,
    required TResult Function(AddTodoEvent value) addTodo,
    required TResult Function(DeleteTodoEvent value) deleteTodo,
    required TResult Function(UpdateTodoEvent value) updateTodo,
    required TResult Function(SubscribeEvent value) subscribe,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult? Function(AddTodoEvent value)? addTodo,
    TResult? Function(DeleteTodoEvent value)? deleteTodo,
    TResult? Function(UpdateTodoEvent value)? updateTodo,
    TResult? Function(SubscribeEvent value)? subscribe,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult Function(AddTodoEvent value)? addTodo,
    TResult Function(DeleteTodoEvent value)? deleteTodo,
    TResult Function(UpdateTodoEvent value)? updateTodo,
    TResult Function(SubscribeEvent value)? subscribe,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class AddTodoEvent implements TodosEvent {
  const factory AddTodoEvent(final TodoEntity todo) = _$AddTodoEvent;

  TodoEntity get todo;
  @JsonKey(ignore: true)
  _$$AddTodoEventCopyWith<_$AddTodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTodoEventCopyWith<$Res> {
  factory _$$DeleteTodoEventCopyWith(
          _$DeleteTodoEvent value, $Res Function(_$DeleteTodoEvent) then) =
      __$$DeleteTodoEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity todo});
}

/// @nodoc
class __$$DeleteTodoEventCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$DeleteTodoEvent>
    implements _$$DeleteTodoEventCopyWith<$Res> {
  __$$DeleteTodoEventCopyWithImpl(
      _$DeleteTodoEvent _value, $Res Function(_$DeleteTodoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$DeleteTodoEvent(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoEntity,
    ));
  }
}

/// @nodoc

class _$DeleteTodoEvent implements DeleteTodoEvent {
  const _$DeleteTodoEvent(this.todo);

  @override
  final TodoEntity todo;

  @override
  String toString() {
    return 'TodosEvent.deleteTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoEvent &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodoEventCopyWith<_$DeleteTodoEvent> get copyWith =>
      __$$DeleteTodoEventCopyWithImpl<_$DeleteTodoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodosFromDB,
    required TResult Function(TodoEntity todo) addTodo,
    required TResult Function(TodoEntity todo) deleteTodo,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function() subscribe,
  }) {
    return deleteTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodosFromDB,
    TResult? Function(TodoEntity todo)? addTodo,
    TResult? Function(TodoEntity todo)? deleteTodo,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function()? subscribe,
  }) {
    return deleteTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodosFromDB,
    TResult Function(TodoEntity todo)? addTodo,
    TResult Function(TodoEntity todo)? deleteTodo,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosFromDBEvent value) getTodosFromDB,
    required TResult Function(AddTodoEvent value) addTodo,
    required TResult Function(DeleteTodoEvent value) deleteTodo,
    required TResult Function(UpdateTodoEvent value) updateTodo,
    required TResult Function(SubscribeEvent value) subscribe,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult? Function(AddTodoEvent value)? addTodo,
    TResult? Function(DeleteTodoEvent value)? deleteTodo,
    TResult? Function(UpdateTodoEvent value)? updateTodo,
    TResult? Function(SubscribeEvent value)? subscribe,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult Function(AddTodoEvent value)? addTodo,
    TResult Function(DeleteTodoEvent value)? deleteTodo,
    TResult Function(UpdateTodoEvent value)? updateTodo,
    TResult Function(SubscribeEvent value)? subscribe,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class DeleteTodoEvent implements TodosEvent {
  const factory DeleteTodoEvent(final TodoEntity todo) = _$DeleteTodoEvent;

  TodoEntity get todo;
  @JsonKey(ignore: true)
  _$$DeleteTodoEventCopyWith<_$DeleteTodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTodoEventCopyWith<$Res> {
  factory _$$UpdateTodoEventCopyWith(
          _$UpdateTodoEvent value, $Res Function(_$UpdateTodoEvent) then) =
      __$$UpdateTodoEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity todo});
}

/// @nodoc
class __$$UpdateTodoEventCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$UpdateTodoEvent>
    implements _$$UpdateTodoEventCopyWith<$Res> {
  __$$UpdateTodoEventCopyWithImpl(
      _$UpdateTodoEvent _value, $Res Function(_$UpdateTodoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$UpdateTodoEvent(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoEntity,
    ));
  }
}

/// @nodoc

class _$UpdateTodoEvent implements UpdateTodoEvent {
  const _$UpdateTodoEvent(this.todo);

  @override
  final TodoEntity todo;

  @override
  String toString() {
    return 'TodosEvent.updateTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTodoEvent &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTodoEventCopyWith<_$UpdateTodoEvent> get copyWith =>
      __$$UpdateTodoEventCopyWithImpl<_$UpdateTodoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodosFromDB,
    required TResult Function(TodoEntity todo) addTodo,
    required TResult Function(TodoEntity todo) deleteTodo,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function() subscribe,
  }) {
    return updateTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodosFromDB,
    TResult? Function(TodoEntity todo)? addTodo,
    TResult? Function(TodoEntity todo)? deleteTodo,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function()? subscribe,
  }) {
    return updateTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodosFromDB,
    TResult Function(TodoEntity todo)? addTodo,
    TResult Function(TodoEntity todo)? deleteTodo,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosFromDBEvent value) getTodosFromDB,
    required TResult Function(AddTodoEvent value) addTodo,
    required TResult Function(DeleteTodoEvent value) deleteTodo,
    required TResult Function(UpdateTodoEvent value) updateTodo,
    required TResult Function(SubscribeEvent value) subscribe,
  }) {
    return updateTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult? Function(AddTodoEvent value)? addTodo,
    TResult? Function(DeleteTodoEvent value)? deleteTodo,
    TResult? Function(UpdateTodoEvent value)? updateTodo,
    TResult? Function(SubscribeEvent value)? subscribe,
  }) {
    return updateTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult Function(AddTodoEvent value)? addTodo,
    TResult Function(DeleteTodoEvent value)? deleteTodo,
    TResult Function(UpdateTodoEvent value)? updateTodo,
    TResult Function(SubscribeEvent value)? subscribe,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(this);
    }
    return orElse();
  }
}

abstract class UpdateTodoEvent implements TodosEvent {
  const factory UpdateTodoEvent(final TodoEntity todo) = _$UpdateTodoEvent;

  TodoEntity get todo;
  @JsonKey(ignore: true)
  _$$UpdateTodoEventCopyWith<_$UpdateTodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubscribeEventCopyWith<$Res> {
  factory _$$SubscribeEventCopyWith(
          _$SubscribeEvent value, $Res Function(_$SubscribeEvent) then) =
      __$$SubscribeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscribeEventCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$SubscribeEvent>
    implements _$$SubscribeEventCopyWith<$Res> {
  __$$SubscribeEventCopyWithImpl(
      _$SubscribeEvent _value, $Res Function(_$SubscribeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubscribeEvent implements SubscribeEvent {
  const _$SubscribeEvent();

  @override
  String toString() {
    return 'TodosEvent.subscribe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubscribeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodosFromDB,
    required TResult Function(TodoEntity todo) addTodo,
    required TResult Function(TodoEntity todo) deleteTodo,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function() subscribe,
  }) {
    return subscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodosFromDB,
    TResult? Function(TodoEntity todo)? addTodo,
    TResult? Function(TodoEntity todo)? deleteTodo,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function()? subscribe,
  }) {
    return subscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodosFromDB,
    TResult Function(TodoEntity todo)? addTodo,
    TResult Function(TodoEntity todo)? deleteTodo,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosFromDBEvent value) getTodosFromDB,
    required TResult Function(AddTodoEvent value) addTodo,
    required TResult Function(DeleteTodoEvent value) deleteTodo,
    required TResult Function(UpdateTodoEvent value) updateTodo,
    required TResult Function(SubscribeEvent value) subscribe,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult? Function(AddTodoEvent value)? addTodo,
    TResult? Function(DeleteTodoEvent value)? deleteTodo,
    TResult? Function(UpdateTodoEvent value)? updateTodo,
    TResult? Function(SubscribeEvent value)? subscribe,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosFromDBEvent value)? getTodosFromDB,
    TResult Function(AddTodoEvent value)? addTodo,
    TResult Function(DeleteTodoEvent value)? deleteTodo,
    TResult Function(UpdateTodoEvent value)? updateTodo,
    TResult Function(SubscribeEvent value)? subscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class SubscribeEvent implements TodosEvent {
  const factory SubscribeEvent() = _$SubscribeEvent;
}
