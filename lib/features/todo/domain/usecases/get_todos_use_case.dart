import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:todo_sql_lite/features/todo/domain/repositories/todo_repository.dart';
import 'package:todo_sql_lite/utils/use_case.dart';

class GetTodosUseCase extends UseCase<List<TodoEntity>, EmptyUseCaseParams> {
  final TodoRepository repository;

  GetTodosUseCase({required this.repository});

  @override
  Future<UseCaseResult<List<TodoEntity>>> call(EmptyUseCaseParams params) => innerCall(() => repository.getTodos());
}
