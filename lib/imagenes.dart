import 'package:flutter/cupertino.dart';

class Imagenes {
  static const List<DecorationImage> subImagenes = [
    DecorationImage(image: AssetImage('assets/subs1.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/subs2.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/subs3.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/subs4.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/subs5.jpg'), fit: BoxFit.cover),
  ];
  static const List<DecorationImage> popImagenes = [
    DecorationImage(image: AssetImage('assets/pop1.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/pop2.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/pop3.jpeg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/pop4.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/pop5.jpg'), fit: BoxFit.cover),
  ];
  static const List<DecorationImage> trendingImagenes = [
    DecorationImage(image: AssetImage('assets/trend1.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/trend2.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/trend3.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/trend4.jpg'), fit: BoxFit.cover),
    DecorationImage(image: AssetImage('assets/trend5.jpg'), fit: BoxFit.cover),
  ];
}
