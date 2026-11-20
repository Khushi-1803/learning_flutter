
import 'package:flutter/material.dart';
import 'package:todo/screens/newTodo.dart';
import 'package:todo/screens/list.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  List<Map<String, String>> todos = [];

  void _openTodoOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Newtodo(
          onSave: (sno, title) {
            setState(() {
              todos.add({
                'sno': sno,
                'title': title,
              });
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),

      body: ListScreen(todos: todos),

      floatingActionButton: FloatingActionButton(
        onPressed: _openTodoOverlay,
        child: const Icon(Icons.add),
      ),
    );
  }
}
