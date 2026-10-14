import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
final _uuid = Uuid();

final formatter = DateFormat.yMd();

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};
enum Category {
  food,
  travel,
  leisure,
  work,
}
class Expense{
  Expense({
    required this.date,
    required this.title,
    required this.amount,
    required this.category,
  }) : id = _uuid.v4();
  final String id;
  final DateTime date;
  final String title;
  final double amount;
  final Category category;

  String get formattedDate {
    return DateFormat.yMd().format(date);
  }
}
//this.date means "Take the value given to the constructor and store it inside this object's date variable."
//  Dart mein class ek blueprint hoti hai, jisme Expense ke andar id, date, title aur amount store hote hain.
// required fields ko compulsory banata hai, aur uuid.v4() har new expense ke liye automatically unique ID generate karta hai.