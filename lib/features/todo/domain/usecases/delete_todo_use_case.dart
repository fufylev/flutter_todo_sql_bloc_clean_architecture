import 'dart:async';

import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:todo_sql_lite/features/todo/domain/repositories/todo_repository.dart';
import 'package:todo_sql_lite/utils/use_case.dart';

class DeleteTodoUseCase extends UseCase<void, DeleteTodoParams> {
  final TodoRepository repository;

  DeleteTodoUseCase({required this.repository});

  @override
  Future<UseCaseResult<void>> call(DeleteTodoParams params) => innerCall(
        () => repository.deleteTodo(params.todo),
      );
}

class DeleteTodoParams {
  final TodoEntity todo;
  DeleteTodoParams(this.todo);
}
