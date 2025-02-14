import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/home_screen.dart';
import 'package:provider_state_management/provider/count_provider.dart';
import 'package:provider_state_management/screens/count_screen.dart';
import 'package:provider_state_management/stateful_widget_screen.dart';
import 'package:provider_state_management/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CountScreen(),
      ),
    );
  }
}
