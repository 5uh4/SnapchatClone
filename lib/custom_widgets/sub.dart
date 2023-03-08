import 'package:flutter/material.dart';
import 'package:snapchat_v2/imagenes.dart';

class Sub extends StatelessWidget {
  const Sub({super.key, required this.index, required this.descripcion});
  final int index;
  final String descripcion;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
            width: 125,
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: Imagenes
                  .subImagenes[(index + 5) % Imagenes.subImagenes.length],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    descripcion,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              color: Colors.black),
                        ]),
                  )
                ],
              ),
            )));
  }
}
