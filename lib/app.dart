import 'package:batch34_b/view/add.dart';
import 'package:batch34_b/view/circle.dart';
import 'package:batch34_b/view/first_view.dart';
import 'package:batch34_b/view/palindrome_number.dart';
import 'package:batch34_b/view/simple_interest.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home Work",
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstView(),
        '/palindrome': (context) => const PalindromeNumber(),
        '/add': (context) => const Add(),
        '/circle': (context) => const Circle(),
        '/interest': (context) => const SimpleInterest(),
      },
    );
  }
}
