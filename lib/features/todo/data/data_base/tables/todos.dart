import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:todo_sql_lite/features/todo/data/data_base/todos_db.dart';
import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:uuid/uuid.dart';

part 'todos.g.dart';

// ignore: prefer_const_constructors
final uuid = Uuid();

@DataClassName('TodosModel')
class Todos extends Table {
  @override
  Set<Column>? get primaryKey => {todoId};

  TextColumn get todoId => text().nullable().clientDefault(() => uuid.v4())();
  IntColumn get createdAt => integer().nullable()();
  IntColumn get modifiedAt => integer().nullable()();
  TextColumn get title => text().nullable()();
  TextColumn get description => text().nullable()();
}

@DriftAccessor(tables: [Todos])
class TodosDao extends DatabaseAccessor<TodosDb> with _$TodosDaoMixin {
  TodosDao(TodosDb db) : super(db);

  // get Todos
  Future<List<TodoEntity>> getTodos({
    OrderingMode order = OrderingMode.desc,
  }) async {
    final response =
        await (select(db.todos)..orderBy([(todo) => OrderingTerm(expression: todo.createdAt, mode: order)])).get();

    return response.map((e) => e.toTodosInfo()).toList();
  }

  // insert Todos
  Future<void> insertListTodos(List<TodoEntity> list) async {
    await batch((batch) => batch.insertAll(db.todos, list.map((e) => e.toTodosModel()).toList()));
  }

  // insert singleTodo
  Future<void> addTodo(TodoEntity todo) async {
    final todoModified = todo.copyWith(
      createdAt: DateTime.now().millisecondsSinceEpoch,
      modifiedAt: DateTime.now().millisecondsSinceEpoch,
    );
    await into(db.todos).insert(todoModified.toTodosModel());
  }

  // update Todos
  Future<void> updateTodos(List<TodoEntity> list) async {
    await batch((batch) => batch.replaceAll(db.todos, list.map((e) => e.toTodosModel())));
  }

  // update singleTodo
  Future updateTodo(TodoEntity todo) {
    final todoModified = todo.copyWith(modifiedAt: DateTime.now().millisecondsSinceEpoch);
    return update(db.todos).replace(todoModified.toTodosModel());
  }

  // delete singleTodo
  Future deleteTodo(TodoEntity todo) {
    return delete(db.todos).delete(todo.toTodosModel());
  }

  // следим за изменениями в БД
  Stream<List<TodoEntity>> listenTodos() {
    return select(db.todos).map((p0) => p0.toTodosInfo()).watch();
  }
}

extension TodosModelToEntity on TodosModel {
  TodoEntity toTodosInfo() {
    return TodoEntity.fromJson(jsonDecode(toJsonString()));
  }
}

extension TodosModelExtension on TodoEntity {
  TodosModel toTodosModel() {
    return TodosModel(
      todoId: todoId,
      title: title,
      description: description,
      createdAt: createdAt,
      modifiedAt: modifiedAt,
    );
  }
}
