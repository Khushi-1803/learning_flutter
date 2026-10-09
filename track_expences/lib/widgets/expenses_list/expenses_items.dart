import 'package:flutter/material.dart';
import 'package:track_expences/model/expense.dart';

class ExpensesItems extends StatelessWidget {
  const ExpensesItems({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Expense title
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),

            // Amount on left, date and icon on right
            Row(
              children: [
                Text(
                  '\$${expense.amount.toStringAsFixed(2)}',
                ),
                const Spacer(),

                Icon(
                  categoryIcons[expense.category],
                  size: 16,
                ),
                const SizedBox(width: 8),

                Text(expense.formattedDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}