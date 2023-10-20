import 'package:assignment7/signUpModal.dart';
import 'package:flutter/material.dart';
import 'package:assignment7/form1/form1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SignUpModal(),
      child: MyApp(),
    ),
    // MultiProvider(
    //   providers: [
    //     // Add more providers here if needed
    //   ],
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Form1(),
    );
  }
}
