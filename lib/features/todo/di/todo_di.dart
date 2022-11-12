import 'package:get_it/get_it.dart';
import 'package:todo_sql_lite/extensions/get_it_extension.dart';
import 'package:todo_sql_lite/features/todo/data/data_base/todos_db.dart';
import 'package:todo_sql_lite/features/todo/data/datasources/local_data_source.dart';
import 'package:todo_sql_lite/features/todo/data/repositories/todo_repository_impl.dart';
import 'package:todo_sql_lite/features/todo/domain/repositories/todo_repository.dart';
import 'package:todo_sql_lite/features/todo/domain/usecases/add_todo_use_case.dart';
import 'package:todo_sql_lite/features/todo/domain/usecases/delete_todo_use_case.dart';
import 'package:todo_sql_lite/features/todo/domain/usecases/get_stream_todos_use_case.dart';
import 'package:todo_sql_lite/features/todo/domain/usecases/get_todos_use_case.dart';
import 'package:todo_sql_lite/features/todo/domain/usecases/update_todo_use_case.dart';

class TodoDIModule extends BaseDIModule {
  @override
  void updateInjections(GetIt instance) {
    // Регистрируем все инстансы необходимых классов
    // repositories
    instance.registerLazySingleton<TodoRepository>(() => TodoRepositoryImpl(localDataSource: instance.get()));

    // Use cases
    instance.registerFactory(() => GetTodosStreamUseCase(repository: instance.get()));
    instance.registerFactory(() => AddTodoUseCase(repository: instance.get()));
    instance.registerFactory(() => GetTodosUseCase(repository: instance.get()));
    instance.registerFactory(() => DeleteTodoUseCase(repository: instance.get()));
    instance.registerFactory(() => UpdateTodoUseCase(repository: instance.get()));

    // data sources
    instance.registerLazySingleton<TodoLocalDataSource>(() => TodoLocalDataSourceImpl(db: getIt()));

    // data bases
    instance.registerLazySingleton(() => TodosDb());
  }
}
