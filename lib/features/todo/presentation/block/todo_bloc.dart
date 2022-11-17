import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_value/built_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:todo_sql_lite/features/todo/domain/usecases/add_todo_use_case.dart';
import 'package:todo_sql_lite/features/todo/domain/usecases/delete_todo_use_case.dart';
import 'package:todo_sql_lite/features/todo/domain/usecases/get_stream_todos_use_case.dart';
import 'package:todo_sql_lite/features/todo/domain/usecases/get_todos_use_case.dart';
import 'package:todo_sql_lite/features/todo/domain/usecases/update_todo_use_case.dart';
import 'package:todo_sql_lite/utils/use_case.dart';

part 'todo_bloc.freezed.dart';
part 'todo_bloc.g.dart';
part 'todo_state.dart';
part 'todos_events.dart';

class TodoBloc extends Bloc<TodosEvent, TodoState> {
  final GetTodosStreamUseCase getTodosStreamUseCase;
  final AddTodoUseCase addTodoUseCase;
  final GetTodosUseCase getTodosUseCase;
  final DeleteTodoUseCase deleteTodoUseCase;
  final UpdateTodoUseCase updateTodoUseCase;

  TodoBloc(
    this.getTodosStreamUseCase,
    this.addTodoUseCase,
    this.getTodosUseCase,
    this.deleteTodoUseCase,
    this.updateTodoUseCase,
  ) : super(TodoState.initial()) {
    on<TodosEvent>(
      (event, emitter) => event.map<Future<void>>(
        getTodosFromDB: (event) => _getTodosFromDB(event, emitter),
        addTodo: (event) => _addTodo(event, emitter),
        deleteTodo: (event) => _deletedTodo(event, emitter),
        updateTodo: (event) => _updateTodo(event, emitter),
        subscribe: (event) => _subscribe(event, emitter),
      ),
    );

    // создаем подписку на БД
    add(const TodosEvent.subscribe());

    // вызываем первоначальный запрос списка из БД
    add(const TodosEvent.getTodosFromDB());
  }

  Future<void> _getTodosFromDB(GetTodosFromDBEvent event, Emitter<TodoState> emit) async {
    await getTodosUseCase(EmptyUseCaseParams());
  }

  Future<void> _subscribe(SubscribeEvent event, Emitter<TodoState> emit) async {
    // тут мы слушаем изменения в Базе данных и при ее изменении обновляем список [todos]
    //! только тут делаем изменения в стейте!!!!
    await getTodosStreamUseCase.call(EmptyUseCaseParams()).result?.listen((todos) {
      // log(todos.toString(), name: 'todos getTodosStreamUseCase');
      emit(state.setTodos(todos));
    }).asFuture();
  }

  Future<void> _addTodo(AddTodoEvent event, Emitter<TodoState> emit) async {
    await addTodoUseCase(AddTodoParams(event.todo));
  }

  Future<void> _deletedTodo(DeleteTodoEvent event, Emitter<TodoState> emit) async {
    await deleteTodoUseCase(DeleteTodoParams(event.todo));
  }

  Future<void> _updateTodo(UpdateTodoEvent event, Emitter<TodoState> emit) async {
    await updateTodoUseCase(UpdateTodoParams(event.todo));
  }
}
