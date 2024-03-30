import 'package:flutter/material.dart';
import 'package:taskut_application/views/home_screan.dart';
import 'package:taskut_application/widgets/task_widget.dart';

void main() async {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScrean(),
    );
  }
}
