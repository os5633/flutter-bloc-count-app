import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/todo.dart';

@immutable
abstract class TodoEvent extends Equatable {}

class ListTodosEvent extends TodoEvent {
  @override
  List<Object> get props => [];
}

class CreateTodosEvent extends TodoEvent {
  final Todo todo;

  CreateTodosEvent({required this.todo});

  @override
  List<Object> get props => [this.todo];
}

class DeleteTodosEvent extends TodoEvent {
  final Todo todo;

  DeleteTodosEvent({required this.todo});
  @override
  List<Object> get props => [this.todo];
}
