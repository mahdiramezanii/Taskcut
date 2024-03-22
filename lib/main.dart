import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskut_application/information.dart';
import 'package:taskut_application/screan/add_task_screan.dart';
import 'package:taskut_application/screan/home_screan.dart';
import 'package:taskut_application/task.dart';


void main() async {


  await Hive.initFlutter();
  await Hive.openBox("names");
  Hive.registerAdapter(InformationAdapter());
  await Hive.openBox<Information>("info");
  Hive.registerAdapter(TaskAdapter());
  await Hive.openBox<Task>("task");
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
