import 'package:flutter/material.dart';
import 'package:snapchat_v2/custom_widgets/icono_custom.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key, this.texto});
  final String? texto;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child:
                    IconoCustomizado(child: Image.asset('assets/avatar.jpg'))),
            const SizedBox(
              width: 10,
            ),
            const IconoCustomizado(
                child:
                    Icon(Icons.search_outlined, color: Colors.white, size: 27)),
            if (texto != null)
              Expanded(child: Center(child: textoEnPantalla(texto!))),
            const IconoCustomizado(
                child: Icon(Icons.more_horiz, color: Colors.white, size: 30)),
          ],
        ));
  }

  static Text textoEnPantalla(String texto) => Text(texto,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
}
