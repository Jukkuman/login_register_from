import 'package:flutter/material.dart';
import 'Pages/loginpage.dart';
import 'Pages/registerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Register From',
      routes: {
        '/loginpage' : (BuildContext context) => LoginPage(),
        '/registerpage' : (BuildContext context) => RegisterPage()
        },
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.orange[400],
        accentColor: Colors.green,
        textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 75.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400])),
      ),
      home: RegisterPage(),
    );
  }
}
