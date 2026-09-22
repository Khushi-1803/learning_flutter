import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_items.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List TodoList= [
    ["Todo", false],
    ["Todo", false],
    ["Todo", false],
    ["Todo", false],
    ["Todo", false]
  ];

  void checkBoxChanged(bool? value, int index){
    setState(() {
      TodoList[index][1] = !TodoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("TODO LIST",style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.deepPurple[400],
        elevation: 10,
      ),
      body: ListView.builder
        (itemCount: TodoList.length ,
        itemBuilder: (context, index){
          return TodoItems(
            isChecked: TodoList[index]
            [1],
            todoText: TodoList[index][0],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        }
      )
      );

  }
}