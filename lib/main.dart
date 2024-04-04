import 'package:al_quran_bengali/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal,
        textTheme: const TextTheme(
          headline3:
              TextStyle(fontFamily: 'Bold', fontSize: 20, color: Colors.black),
          headline4: TextStyle(
              fontFamily: 'Bold', fontSize: 18.0, color: Color(0xff25292B)),
          headline5: TextStyle(
              fontFamily: 'Bold', fontSize: 16.0, color: Color(0xff25292B)),
          headline6: TextStyle(
              fontFamily: 'Bold', fontSize: 14.0, color: Color(0xffad8507)),
          bodyText1: TextStyle(
              fontFamily: 'Regular', fontSize: 12.0, color: Color(0xff25292B)),
          bodyText2: TextStyle(
              fontFamily: 'Regular', fontSize: 10.0, color: Color(0xff2b2525)),
        ),
        iconTheme: IconThemeData(color: Colors.grey.shade600),
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          textTheme: const TextTheme(
            headline3: TextStyle(
                fontFamily: 'Bold', fontSize: 20.0, color: Colors.white),
            headline4: TextStyle(
                fontFamily: 'Bold', fontSize: 18.0, color: Colors.white),
            headline5: TextStyle(
                fontFamily: 'Bold', fontSize: 16.0, color: Colors.white),
            headline6: TextStyle(
                fontFamily: 'Bold', fontSize: 14.0, color: Colors.white),
            bodyText1: TextStyle(
                fontFamily: 'Regular', fontSize: 12.0, color: Colors.white),
            bodyText2: TextStyle(
                fontFamily: 'Regular', fontSize: 10.0, color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.grey)),
    );
  }
}
