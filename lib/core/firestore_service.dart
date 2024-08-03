import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/core/models/todo.dart';

part 'firestore_service.g.dart';

@Riverpod(keepAlive: true)
class FirestoreService extends _$FirestoreService {
  final _db = FirebaseFirestore.instance;
  @override
  void build() {}

  Future<void> saveNewTodo(Todo todo) async {
    await _db.collection('todos').add(todo.toMap());
  }
}
