import 'package:flutter/material.dart';
import 'package:flutter_expensetracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter_expensetracker/models/expense.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  @override
  State<Expenses> createState(){
    
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Burat",
      amount: 150, 
      date: DateTime.now(), 
      category: Category.food,
      ),
      
      Expense(
      title: "Cinema",
      amount: 300, 
      date: DateTime.now(), 
      category: Category.leisure,
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('The Chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
      );
  }
}