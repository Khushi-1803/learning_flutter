import 'package:flutter/material.dart';
import 'package:todo/screens/newTodo.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  

  @override
  Widget build(BuildContext context) {

    void _openTodoOverlay() {
      showModalBottomSheet(
        context: context,
        builder: (ctx) {
           return const Newtodo();
        },
      );
    }

    


    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Hello, World!')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openTodoOverlay,
        child: Icon(Icons.add),
      ),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat,
    );
  }
}