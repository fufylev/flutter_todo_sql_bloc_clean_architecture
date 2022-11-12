part of 'todo_bloc.dart';

abstract class TodoState implements Built<TodoState, TodoStateBuilder> {
  bool get isLoading;

  List<TodoEntity> get todos;

  TodoState._();

  TodoState setLoading(bool isLoading) => rebuild((b) => (b)..isLoading = isLoading);

  TodoState setTodos(List<TodoEntity> list) => rebuild((b) => b..todos = list);

  TodoState addTodo(TodoEntity todo) => rebuild((b) => b..todos = [...todos, todo]);

  factory TodoState([Function(TodoStateBuilder b) updates]) = _$TodoState;

  factory TodoState.initial() {
    return TodoState((b) => b
      ..isLoading = true
      ..todos = []);
  }
}
