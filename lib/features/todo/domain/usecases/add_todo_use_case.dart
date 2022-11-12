import 'dart:async';

import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:todo_sql_lite/features/todo/domain/repositories/todo_repository.dart';
import 'package:todo_sql_lite/utils/use_case.dart';

class AddTodoUseCase extends UseCase<void, AddTodoParams> {
  final TodoRepository repository;

  AddTodoUseCase({required this.repository});

  @override
  Future<UseCaseResult<void>> call(AddTodoParams params) => innerCall(
        () => repository.addTodo(params.todo),
      );
}

class AddTodoParams {
  final TodoEntity todo;
  AddTodoParams(this.todo);
}
