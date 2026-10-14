import 'package:flutter/material.dart';
import 'widgets/expenses_list/expenses.dart';


void main() {
  runApp(MaterialApp(
    title: 'Expense Tracker',
    theme: ThemeData(
      useMaterial3: true,
     
    ),
    home:  Expenses(),
  ));
}

