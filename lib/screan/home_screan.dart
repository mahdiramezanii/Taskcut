import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:hive_flutter/hive_flutter.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:taskut_application/information.dart';
import 'package:taskut_application/task.dart';
import 'package:taskut_application/taskWidget.dart';

class HomeApp extends StatefulWidget {
  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var textController = TextEditingController();

  String text = " ";
  var box = Hive.box("names");
  var boxInfo = Hive.box<Information>("info");
  bool is_check = false;
  var boxTask = Hive.box<Task>("task");
  

  @override
  Widget build(BuildContext context) {

    var task=boxTask.values.toList();

    return Scaffold(
      backgroundColor: Color(0xffBFC3C8),
      body: ListView.builder(
          itemCount: boxTask.values.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10,bottom:5),
              child:TaskWidget(task: task[index],),
            );
          }),
    );
  }

 
}
