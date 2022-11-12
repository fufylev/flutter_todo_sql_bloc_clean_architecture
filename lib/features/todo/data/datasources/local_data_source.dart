import 'package:todo_sql_lite/features/todo/data/data_base/todos_db.dart';
import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';

abstract class TodoLocalDataSource {
  Future<List<TodoEntity>> getTodos();
  Future<void> insertListTodos(List<TodoEntity> list);
  Future<void> updateTodo(TodoEntity todo);
  Future<void> deleteTodo(TodoEntity todo);
  Future<void> addTodo(TodoEntity todo);
  Stream<List<TodoEntity>> listenTodos();
}

class TodoLocalDataSourceImpl extends TodoLocalDataSource {
  final TodosDb db;
  TodoLocalDataSourceImpl({required this.db});

  @override
  Future<List<TodoEntity>> getTodos() async {
    final result = await db.todosDao.getTodos();
    return result;
  }

  @override
  Future<void> insertListTodos(List<TodoEntity> list) async {
    try {
      await db.todosDao.insertListTodos(list);
    } catch (_) {
      await db.todosDao.updateTodos(list);
    }
  }

  @override
  Future<void> updateTodo(TodoEntity todo) async {
    await db.todosDao.updateTodo(todo);
  }

  @override
  Future<void> deleteTodo(TodoEntity todo) async {
    await db.todosDao.deleteTodo(todo);
  }

  @override
  Stream<List<TodoEntity>> listenTodos() {
    return db.todosDao.listenTodos();
  }

  @override
  Future<void> addTodo(TodoEntity todo) async {
    await db.todosDao.addTodo(todo);
  }
}
