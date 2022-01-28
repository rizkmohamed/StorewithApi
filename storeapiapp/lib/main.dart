import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:storeapiapp/views/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StoreApiApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
       
      ),
      home:const HomePage(),
    );
  }
}

