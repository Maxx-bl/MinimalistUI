import 'package:flutter/material.dart';

// Import other pages (if needed)
import 'pages/home_page.dart';
import 'pages/statistics_page.dart';

void main() {
  runApp(MinimalistApp());
}

class MinimalistApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minimalisme Numérique',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/statistics': (context) => StatisticsPage(),
      },
    );
  }
}
