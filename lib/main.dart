// ignore_for_file: prefer_const_literals_to_create_immutables, library_prefixes
import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(const ListApp());
}

class ListApp extends StatelessWidget {
  const ListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF3F6FF)),
        home: const Home());
  }
}
