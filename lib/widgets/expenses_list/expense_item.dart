import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:expensetracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin :const EdgeInsets.symmetric(//padding is not use ...so margin
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
             const SizedBox(height: 4),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),// 12.3433=>12.34
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.alarm),
                    const SizedBox(width: 8),
                    Text(expense.date.toString()),
                  ],
                ),
              ],
            )
          ],
        ),
    );
  }
}
