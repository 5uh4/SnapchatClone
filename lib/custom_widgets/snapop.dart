import 'package:flutter/cupertino.dart';
import 'package:snapchat_v2/custom_widgets/pop.dart';
import 'package:snapchat_v2/datos/datos.dart';

class Populares extends StatelessWidget {
  const Populares({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = List.generate(
        Datos.popular.length,
        (index) => Popular(
            index: index, descripcion: Datos.popular[index].descripcion));
    return SizedBox(
        height: 200,
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: ((context, index) => children[index]),
            separatorBuilder: ((context, index) => const SizedBox(
                  width: 1,
                )),
            itemCount: children.length));
  }
}
