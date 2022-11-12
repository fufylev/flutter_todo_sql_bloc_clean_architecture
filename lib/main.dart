import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_sql_lite/extensions/get_it_extension.dart';
import 'package:todo_sql_lite/features/todo/presentation/block/todo_bloc.dart';
import 'package:todo_sql_lite/features/todo/presentation/pages/todo_screen.dart';
import 'package:todo_sql_lite/features/todo/presentation/pages/update_todo_screen.dart';

import 'features/todo/di/todo_di.dart';
import 'features/todo/presentation/pages/add_todo_screen.dart';

// инициализируем сущность DI
final instance = GetIt.instance;

Future<void> main() async {
  await initDI();
  runApp(const MyApp());
}

// создаем метод внедрения зависимостей
Future<void> initDI() async {
  // подключаем модуль Todos
  instance.installModule(TodoDIModule());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc(getIt(), getIt(), getIt(), getIt(), getIt()),
      child: const TodoModule(),
    );
  }
}

class TodoModule extends StatelessWidget {
  const TodoModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: 'TODO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const TodoScreen(),
      builder: (context, child) {
        return child!;
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return CupertinoPageRoute(builder: (_) => const TodoScreen(), settings: settings);

          case '/addTodo':
            return CupertinoPageRoute(builder: (_) => const AddTodoScreen(), settings: settings);

          case '/updateTodo':
            {
              final args = (settings.arguments ?? UpdateTodoScreenArguments) as UpdateTodoScreenArguments;

              return CupertinoPageRoute(builder: (_) => UpdateTodoScreen(todo: args.todo), settings: settings);
            }
        }
        return null;
      },
      initialRoute: '/',
    );
  }
}
