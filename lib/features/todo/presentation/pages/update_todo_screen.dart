import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:todo_sql_lite/features/todo/presentation/block/todo_bloc.dart';

class UpdateTodoScreenArguments {
  UpdateTodoScreenArguments(this.todo);
  final TodoEntity todo;
}

class UpdateTodoScreen extends StatefulWidget {
  const UpdateTodoScreen({Key? key, required this.todo}) : super(key: key);

  final TodoEntity todo;

  @override
  State<UpdateTodoScreen> createState() => _UpdateTodoScreenState();
}

class _UpdateTodoScreenState extends State<UpdateTodoScreen> {
  late TextEditingController titleController;
  late TextEditingController descController;

  @override
  void initState() {
    titleController = TextEditingController();
    titleController.text = widget.todo.title;

    descController = TextEditingController();
    descController.text = widget.todo.description;
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Todo'),
        leading: const BackButton(),
      ),
      body: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.title),
                    hintText: 'Title short',
                    labelText: 'Title',
                  ),
                  validator: (value) {
                    return value == null || value.isEmpty ? 'Please enter title' : null;
                  },
                ),
                TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                  maxLength: 600,
                  maxLines: 10,
                  controller: descController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.description),
                    hintText: 'Content short',
                    labelText: 'Content',
                  ),
                  validator: (value) {
                    return value == null || value.isEmpty ? 'Please enter some text' : null;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<TodoBloc>().add(TodosEvent.updateTodo(widget.todo.copyWith(
                            title: titleController.text,
                            description: descController.text,
                          )));
                      Navigator.pop(context);
                    },
                    child: const Text('Update'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
