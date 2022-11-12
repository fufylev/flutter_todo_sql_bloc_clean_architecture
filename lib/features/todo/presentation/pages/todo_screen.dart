import 'package:flutter/material.dart';
import 'package:todo_sql_lite/features/todo/presentation/widgets/todo_list.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/addTodo');
            },
            icon: const Icon(Icons.add_circle_sharp, color: Colors.white, size: 32.0),
          ),
        ],
      ),
      body: const Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: TodoList(),
        ),
      ),
    );
  }
}
