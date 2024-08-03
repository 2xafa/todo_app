import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/core/models/todo.dart';
import 'package:todo_app/flavors.dart';
import 'package:todo_app/screens/home_screen/provider/todo_list_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoListProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(todoList[index].title),
            trailing: IconButton(
              onPressed: () {
                ref.read(todoListProvider.notifier).deleteTodo(index);
              },
              icon: const Icon(Icons.delete),
            ),
            leading: Checkbox(
              onChanged: (v) {},
              value: true,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String? title;
          showDialog(
              context: context,
              builder: (contex) => Material(
                    child: AlertDialog.adaptive(
                      title: const Text('Add New Todo'),
                      content: TextField(
                        onChanged: (v) {
                          title = v;
                        },
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            if (title != null) {
                              Todo todo = Todo(title: title!, comleted: false);
                              ref
                                  .read(todoListProvider.notifier)
                                  .addNewTodo(todo);
                            }
                            Navigator.pop(context);
                          },
                          child: Text("Save"),
                        )
                      ],
                    ),
                  ));
        },
      ),
    );
  }
}




