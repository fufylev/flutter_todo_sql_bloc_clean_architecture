import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_sql_lite/features/todo/presentation/block/todo_bloc.dart';
import 'package:todo_sql_lite/features/todo/presentation/widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
      if (state.todos.isEmpty) return const Center(child: Text('Список пуст'));
      return ListView.builder(
        itemCount: state.todos.length,
        itemBuilder: (context, index) {
          final todo = state.todos[index];
          return TodoItem(todo: todo);
        },
      );
    });
  }
}
