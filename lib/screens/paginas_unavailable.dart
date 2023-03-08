import 'package:flutter/material.dart';

class NoDisponible extends StatelessWidget {
  const NoDisponible({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
      child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 260, horizontal: 50),
          child: Text(
            'No disponible.',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          )),
    );
  }
}
