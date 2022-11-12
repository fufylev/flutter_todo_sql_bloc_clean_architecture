import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';

abstract class TodoRepository {
  Future<List<TodoEntity>> getTodos();
  Future<void> insertListTodos(List<TodoEntity> list);
  Future<void> updateTodo(TodoEntity todo);
  Future<void> deleteTodo(TodoEntity todo);
  Future<void> addTodo(TodoEntity todo);
  Stream<List<TodoEntity>> listenTodos();
}
