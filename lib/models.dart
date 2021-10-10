import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final String name;
  final IconData icon;

  Category(this.name, this.icon);
}

List<Category> list = [
  Category('Accomodation', Icons.home),
  Category('Experience', Icons.ballot_rounded),
  Category('Adventures', Icons.api_sharp),
  Category('Flights', Icons.flight),
];
