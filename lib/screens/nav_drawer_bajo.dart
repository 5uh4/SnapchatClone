import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaDrawer extends StatefulWidget {
  const ListaDrawer({super.key});

  @override
  State<ListaDrawer> createState() => ListaDrawerState();
}

class ListaDrawerState extends State<ListaDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Column(children: [
        menuItem(1, "Localizacion", CupertinoIcons.location_solid),
        menuItem(2, "Mensajes", CupertinoIcons.chat_bubble),
        menuItem(3, "Camara", CupertinoIcons.camera),
        menuItem(4, "Amigos", Icons.people_alt_outlined),
        menuItem(5, "Descubrir", CupertinoIcons.play),
        const SizedBox(
          height: 150,
        ),
        menuItem(6, "Ajustes", Icons.settings_outlined),
        menuItem(7, "Salir", Icons.logout_outlined),
      ]),
    );
  }
}

Widget menuItem(int id, String texto, IconData icono) {
  return Material(
      child: InkWell(
          onTap: () {},
          child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 20, 0, 20),
              child: Row(
                children: [
                  Expanded(
                      child: Icon(
                    icono,
                    size: 20,
                    color: Colors.black,
                  )),
                  Expanded(
                      flex: 5,
                      child: Text(
                        texto,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ))));
}
