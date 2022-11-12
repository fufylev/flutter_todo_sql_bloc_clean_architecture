import 'dart:async';

import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:todo_sql_lite/features/todo/domain/repositories/todo_repository.dart';
import 'package:todo_sql_lite/utils/use_case.dart';

class UpdateTodoUseCase extends UseCase<void, UpdateTodoParams> {
  final TodoRepository repository;

  UpdateTodoUseCase({required this.repository});

  @override
  Future<UseCaseResult<void>> call(UpdateTodoParams params) => innerCall(
        () => repository.updateTodo(params.todo),
      );
}

class UpdateTodoParams {
  final TodoEntity todo;
  UpdateTodoParams(this.todo);
}
