import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyHomePage.dart';
import '../core/MyAppState.dart';

class MyApp extends StatelessWidget{
  //const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}