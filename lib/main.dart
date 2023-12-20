import 'package:flutter/material.dart';
import 'package:task_manager_pract/UIHelper/constants.dart';
import 'package:task_manager_pract/newCalender/taskManager.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        splashColor: primerycolor,
        fontFamily: "PTSerif",
        hintColor: Colors.black,
        colorScheme: ColorScheme.light(
            primary: Color(0xFFFF471A),
            onSecondary: Colors.black,
            onPrimary: Colors.white,
            surface: Colors.black,
            onSurface: Colors.black,
            secondary: Colors.black),
        dialogBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: TaskManager(),
    );
  }
}

