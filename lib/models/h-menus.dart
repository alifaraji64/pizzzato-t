import 'package:flutter/material.dart';

class Hmenu {
  final String name;
  final MaterialAccentColor color;
  Hmenu(this.name, this.color);
}

var hMenuData = [
  {"name": "All food", 'color': Colors.redAccent},
  {"name": "Pasta", 'color': Colors.greenAccent},
  {"name": "Pizza", 'color': Colors.blueAccent}
];

List<Hmenu> items =
    hMenuData.map((item) => Hmenu(item['name'], item['color'])).toList();
