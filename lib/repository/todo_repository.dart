import 'package:flutter_application_2/model/todo.dart';

/// get - ListTodo
/// post - CreateTodo
/// Delete - deleteTodo
class TodoRepository {
  Future<List<Map<String, dynamic>>> listTodo() async {
    await Future.delayed(Duration(seconds: 1));

    return [
      {
        'id': 1,
        'title': 'flutter 배우기',
        'createdAt': DateTime.now().toString(),
      },
      {
        'id': 2,
        'title': 'dart 배우기',
        'createdAt': DateTime.now().toString(),
      }
    ];
  }

  Future<Map<String, dynamic>> createTodo(Todo todo) async {
    await Future.delayed(Duration(seconds: 1));

    return todo.toJson();
  }

  Future<Map<String, dynamic>> deleteTodo(Todo todo) async {
    await Future.delayed(Duration(seconds: 1));

    return todo.toJson();
  }
}
