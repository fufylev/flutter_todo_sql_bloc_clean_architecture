import 'package:todo_sql_lite/features/todo/data/datasources/local_data_source.dart';
import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:todo_sql_lite/features/todo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl extends TodoRepository {
  TodoRepositoryImpl({
    required this.localDataSource,
  });

  final TodoLocalDataSource localDataSource;

  @override
  Future<List<TodoEntity>> getTodos() {
    return localDataSource.getTodos();
  }

  @override
  Future<void> insertListTodos(List<TodoEntity> list) {
    return localDataSource.insertListTodos(list);
  }

  @override
  Future<void> updateTodo(TodoEntity todo) {
    return localDataSource.updateTodo(todo);
  }

  @override
  Future<void> deleteTodo(TodoEntity todo) {
    return localDataSource.deleteTodo(todo);
  }

  @override
  Stream<List<TodoEntity>> listenTodos() {
    return localDataSource.listenTodos();
  }

  @override
  Future<void> addTodo(TodoEntity todo) {
    return localDataSource.addTodo(todo);
  }
}
