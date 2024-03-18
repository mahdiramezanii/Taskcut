import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:taskcut/screan/home_screan.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("names");
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}
