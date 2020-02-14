import 'package:flutter/material.dart';
import 'package:flutter_modulos_daniel/Perfil.dart';
import 'package:flutter_modulos_daniel/Confirmacion.dart';
import 'package:flutter_modulos_daniel/Chekout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CheckOutPage(),
    );
  }
}