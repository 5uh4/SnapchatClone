import 'package:flutter/cupertino.dart';
import 'package:snapchat_v2/custom_widgets/sub.dart';
import 'package:snapchat_v2/datos/datos.dart';

class Subs extends StatelessWidget {
  const Subs({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = List.generate(
        Datos.subs.length,
        (index) =>
            Sub(index: index, descripcion: Datos.subs[index].descripcion));
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
