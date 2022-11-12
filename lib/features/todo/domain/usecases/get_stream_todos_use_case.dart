import 'dart:async';

import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:todo_sql_lite/features/todo/domain/repositories/todo_repository.dart';
import 'package:todo_sql_lite/utils/use_case.dart';

class GetTodosStreamUseCase extends SyncUseCase<Stream<List<TodoEntity>>, EmptyUseCaseParams> {
  final TodoRepository repository;

  GetTodosStreamUseCase({required this.repository});

  @override
  UseCaseResult<Stream<List<TodoEntity>>> call(EmptyUseCaseParams params) => innerCall(() => repository.listenTodos());
}
