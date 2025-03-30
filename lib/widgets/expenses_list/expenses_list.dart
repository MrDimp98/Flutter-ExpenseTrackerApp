import 'package:flutter/material.dart';
import 'package:flutter_expensetracker/models/expense.dart';
import 'package:flutter_expensetracker/widgets/expenses_list/expenses_item.dart';
class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder:
          (ctx, index) => Dismissible(
            key: ValueKey(expenses[index]),
            background: Container(
              color: Theme.of(context).colorScheme.error.withOpacity(0.75),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            onDismissed: (direction){
              onRemoveExpense(expenses[index]);
            },
            child: ExpensesItem(expenses[index]),
          ),
    );
  }
}
