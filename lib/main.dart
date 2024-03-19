import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskut_application/information.dart';
import 'package:taskut_application/screan/home_screan.dart';


void main() async {
  await Hive.initFlutter();
  await Hive.openBox("names");
  Hive.registerAdapter(InformationAdapter());
  await Hive.openBox<Information>("info");
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
