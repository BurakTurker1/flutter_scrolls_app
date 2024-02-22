import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_scrolls_app/ListView_kullan%C4%B1m%C4%B1.dart';
import 'package:flutter_scrolls_app/ListView_layout_problemleri.dart';
import 'package:flutter_scrolls_app/cartListtile.dart';
import 'package:flutter_scrolls_app/custom_scroll_view.dart';
import 'package:flutter_scrolls_app/gridView_kullan%C4%B1m.dart';

void main() {
  runApp( MyApp());
  configLoading();
  }

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.deepOrangeAccent
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(appBarTheme:AppBarTheme(backgroundColor: Colors.green)),
      home:CustomScrollView_ornek() ,
      builder: EasyLoading.init(),
      //Cartlisttile_Ornek(),
    );
  }
}