import 'package:flutter/material.dart';
import 'package:todoapp/screens/home_screen.dart';
//import 'package:todoapp/screens/menu_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:todoapp/screens/main_layout.dart';

import 'screens/main.layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'todoapp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: MenuScreen(),
      // home: HomeScreen(),
      home: MainLayout(),
      debugShowCheckedModeBanner: false,
    );
  }
}
