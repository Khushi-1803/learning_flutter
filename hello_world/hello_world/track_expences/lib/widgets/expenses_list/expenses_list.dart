import 'package:flutter/material.dart';
import 'package:track_expences/model/expense.dart';
import 'package:track_expences/widgets/expenses_list/expenses_items.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:expenses.length, itemBuilder:(context,index)=>
     ExpensesItems(expense: expenses[index])


    );
  }
}