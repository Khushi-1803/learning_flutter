import 'package:flutter/material.dart';
import 'package:track_expences/model/expense.dart';
import 'package:track_expences/widgets/expenses_list/expenses_items.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;

  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:expenses.length, itemBuilder:(context,index)=>
     Dismissible(
      key: ValueKey(expenses[index]),
      background: Container(color: Theme.of(context).colorScheme.error),
      onDismissed: (direction) {
        // Handle the dismissal action here, e.g., remove the expense from the list
        onRemoveExpense(expenses[index]);
      },
      child: ExpensesItems(expense: expenses[index]),


    ),);
  }
}