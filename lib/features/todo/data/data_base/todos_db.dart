import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:todo_sql_lite/features/todo/data/data_base/tables/todos.dart';

part 'database_connection.dart';
part 'todos_db.g.dart';

@DriftDatabase(tables: [Todos], daos: [TodosDao])
class TodosDb extends _$TodosDb {
  TodosDb() : super(_openConnection());

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
    );
  }
}
