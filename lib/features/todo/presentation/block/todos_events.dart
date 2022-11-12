part of 'todo_bloc.dart';

@freezed
class TodosEvent with _$TodosEvent {
  const factory TodosEvent.getTodosFromDB() = GetTodosFromDBEvent;
  const factory TodosEvent.addTodo(TodoEntity todo) = AddTodoEvent;
  const factory TodosEvent.deleteTodo(TodoEntity todo) = DeleteTodoEvent;
  const factory TodosEvent.updateTodo(TodoEntity todo) = UpdateTodoEvent;
  const factory TodosEvent.subscribe() = SubscribeEvent;
}
