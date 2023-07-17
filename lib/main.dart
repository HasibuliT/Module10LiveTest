import 'package:flutter/material.dart';
import 'package:module10_live_test/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.cyan,
        ),
        primaryColor: Colors.yellow[200],
      ),

      darkTheme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.purple,
        ),
        primaryColor: Colors.red[200],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Live Test 10',
      home: HomePage(),
    );
  }

}


