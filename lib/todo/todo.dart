import 'package:flutter/material.dart';
import 'package:hello_world/widget/list/todoList.dart';

class TodoPage extends StatefulWidget {
  @override
  createState() => new _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TodoList(),
    );
  }
}