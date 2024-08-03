import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/core/firestore_service.dart';
import 'package:todo_app/core/models/todo.dart';

part 'todo_list_provider.g.dart';

@Riverpod(keepAlive: true)
class TodoList extends _$TodoList {
  @override
  List<Todo> build() {
    return [];
  }

  Future<void> addNewTodo(Todo todo) async {
    try {
      await ref.read(firestoreServiceProvider.notifier).saveNewTodo(todo);
      state = [...state, todo];
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void deleteTodo(int index) {
    List<Todo> todos = state;
    todos.removeAt(index);
    state = [...todos];
  }
}
