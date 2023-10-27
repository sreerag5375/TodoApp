import 'package:flutter/material.dart';
import 'package:todo_app/views/screens/add_task_screen.dart';
import 'package:todo_app/views/screens/home_screen.dart';
import 'package:todo_app/views/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        fontFamily: 'kanit',
        primarySwatch: Colors.grey,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        // useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        'home': (context) =>  const HomeScreen(),
        'addTask' :(context) => const AddTaskScreen()
      },
    );
  }
}
