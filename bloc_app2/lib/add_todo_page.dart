import 'package:bloc_app2/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todoTextController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Todo'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: todoTextController,
                decoration: const InputDecoration(
                  hintText: 'Title',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<TodoCubit>(context)
                        .addTodo(todoTextController.text.trim());
                    Navigator.pop(context);
                  },
                  child: const Text('Add'))
            ],
          ),
        ));
  }
}
