import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/screens/lessons_screen.dart';
import 'package:couldai_user_app/screens/games_screen.dart';
import 'package:couldai_user_app/screens/quizzes_screen.dart';
import 'package:couldai_user_app/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English Learning Adventure',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/lessons': (context) => const LessonsScreen(),
        '/games': (context) => const GamesScreen(),
        '/quizzes': (context) => const QuizzesScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
