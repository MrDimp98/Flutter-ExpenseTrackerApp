import 'package:flutter/material.dart';
import 'package:flutter_expensetracker/models/expense.dart';

class ExpensesItem extends StatelessWidget{
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16
          ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4,),
            Row(
              children: [
                Text('₱ ${expense.amount.toStringAsFixed(2)}'),
                Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    SizedBox(width: 8,),
                    Text(expense.formattedDate)
                  ],
                )
              ],
            )
          ],
        ),
      ),
      );
  }
}