import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snapchat_v2/screens/nav_drawer.dart';
import 'package:snapchat_v2/screens/nav_drawer_bajo.dart';
import 'package:snapchat_v2/screens/paginas_unavailable.dart';
import 'package:snapchat_v2/screens/stories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: MyHomePage(),
    );
  }
}

//ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  int _pantallaActual = 4;
  final PageController _pageController = PageController(initialPage: 4);

  static const _colores = [
    Color(0xff39CB8F),
    Color(0xff00B6FF),
    Colors.yellow,
    Color(0xffCC4BFA),
    Color(0xffE31A32)
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            NavDrawer(),
            ListaDrawer(),
          ],
        ),
      )),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _pantallaActual = index;
          });
        },
        children: <Widget>[
          NoDisponible(color: _colores[0]),
          NoDisponible(color: _colores[1]),
          NoDisponible(color: _colores[2]),
          NoDisponible(color: _colores[3]),
          const MainScreen(),
        ],
      ),
      bottomNavigationBar: SizedBox(
          height: 55,
          width: double.infinity,
          child: BottomNavigationBar(
              selectedItemColor: _colores[_pantallaActual],
              unselectedItemColor: Colors.white,
              backgroundColor: Colors.indigo,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              currentIndex: _pantallaActual,
              onTap: (int index) {
                _pageController.jumpToPage(index);
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.location_solid), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.chat_bubble_2), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.camera_viewfinder), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.people_alt_rounded), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.play), label: ''),
              ])),
    );
  }
}

void setState(Null Function() param0) {}
