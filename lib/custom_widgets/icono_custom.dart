import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconoCustomizado extends StatelessWidget {
  const IconoCustomizado({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromARGB(255, 51, 50, 50),
      ),
      child: Padding(padding: const EdgeInsets.all(4), child: child),
    );
  }
}
