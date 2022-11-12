import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:todo_sql_lite/features/todo/presentation/block/todo_bloc.dart';
import 'package:todo_sql_lite/features/todo/presentation/pages/update_todo_screen.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key, required this.todo}) : super(key: key);

  final TodoEntity todo;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final createdAt = DateTime.fromMillisecondsSinceEpoch(todo.createdAt ?? 0);
    final createdAtToFormat = DateFormat('dd MMM yyyy hh:mm:ss a').format(createdAt);
    final modifiedAt = DateTime.fromMillisecondsSinceEpoch(todo.modifiedAt ?? 0);
    final modifiedAtToFormat = DateFormat('dd MMM yyyy hh:mm:ss a').format(modifiedAt);

    return Column(
      children: [
        Container(
          width: size.width - 32,
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      todo.title,
                      style: const TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      todo.description,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Created at: $createdAtToFormat',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Modified at: $modifiedAtToFormat',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/updateTodo',
                        arguments: UpdateTodoScreenArguments(todo),
                      );
                    },
                    icon: const Icon(Icons.edit, color: Colors.grey, size: 24),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<TodoBloc>().add(TodosEvent.deleteTodo(todo));
                    },
                    icon: const Icon(Icons.delete_forever, color: Colors.red, size: 24),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
