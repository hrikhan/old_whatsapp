import 'package:flutter/material.dart';
import 'package:whats_app_clone/screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home:Homepage()
          );
  }
}