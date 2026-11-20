
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<Map<String, String>> todos;

  const ListScreen({
    super.key,
    required this.todos,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            child: Text(todos[index]['sno']!),
          ),

          title: Text(todos[index]['title']!),
        );
      },
    );
  }
}
