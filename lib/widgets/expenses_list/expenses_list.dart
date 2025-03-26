import 'package:flutter/material.dart';
import 'package:flutter_expensetracker/models/expense.dart';
import 'package:flutter_expensetracker/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget{
  const ExpensesList({super.key, required this.expenses});

 
  final List<Expense> expenses;
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpensesItem(expenses[index]),
    );
  }
}