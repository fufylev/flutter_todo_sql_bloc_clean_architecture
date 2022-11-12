import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_sql_lite/features/todo/domain/entities/todo_entity.dart';
import 'package:todo_sql_lite/features/todo/presentation/block/todo_bloc.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  late TextEditingController titleController;
  late TextEditingController descController;

  @override
  void initState() {
    titleController = TextEditingController();
    descController = TextEditingController();
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
        title: const Text('Add Todo'),
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
                      context.read<TodoBloc>().add(TodosEvent.addTodo(TodoEntity(
                            title: titleController.text,
                            description: descController.text,
                          )));
                      Navigator.pop(context);
                    },
                    child: const Text('Add'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
