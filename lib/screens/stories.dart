import 'package:flutter/material.dart';
import 'package:snapchat_v2/custom_widgets/snapop.dart';
import 'package:snapchat_v2/custom_widgets/snapsub.dart';
import 'package:snapchat_v2/custom_widgets/snaptrend.dart';
import 'package:snapchat_v2/custom_widgets/top_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopNavBar(
                texto: 'Descubre',
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        tituloSeccion('Ocurriendo ahora'),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Text(
                            'Miercoles, 8 de Marzo',
                            style: TextStyle(
                                color: Color.fromARGB(255, 134, 133, 133),
                                fontSize: 10.5),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 119, 119, 119),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset('assets/ghost.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 119, 119, 119),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/cloud.png',
                        height: 55,
                        width: 55,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.cloud_circle,
                                size: 16,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "El tiempo",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Vista Local",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                "1h",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 182, 182, 182)),
                              ))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                            child: Text(
                              ' La temperatura alta de hoy es de 1129º con bajas de -32º',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            ' Toca la prevision personalizada',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              tituloSeccion('Descubre Suscripciones'),
              const Subs(),
              const SizedBox(
                height: 20,
              ),
              tituloSeccion('Ahora en Trending'),
              const TrendingTopics(),
              const SizedBox(
                height: 20,
              ),
              tituloSeccion('Popular en Snapchat'),
              const Populares(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Padding tituloSeccion(String texto) => Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ));
}
