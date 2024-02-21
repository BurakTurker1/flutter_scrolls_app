import 'package:flutter/material.dart';
import 'package:flutter_scrolls_app/ListView_kullan%C4%B1m%C4%B1.dart';
import 'package:flutter_scrolls_app/cartListtile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(appBarTheme:AppBarTheme(backgroundColor: Colors.green)),
      home:ListView_Kullanimi(),
      //Cartlisttile_Ornek(),
    );
  }
}