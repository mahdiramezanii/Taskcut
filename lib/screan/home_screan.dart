import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:taskut_application/information.dart';
import 'package:taskut_application/screan/add_task_screan.dart';
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

  bool show_tab = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBFC3C8),
      body: ValueListenableBuilder(
        valueListenable: boxTask.listenable(),
        builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notif) {
              if (notif.direction == ScrollDirection.reverse) {
                setState(() {
                  show_tab = false;
                });
              } else if (notif.direction == ScrollDirection.forward) {
                setState(() {
                  show_tab = true;
                });
              }

              return true;
            },
            child: ListView.builder(
                itemCount: boxTask.values.length,
                itemBuilder: (BuildContext context, int index) {
                  var task = boxTask.values.toList();
                  return Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: Dismissible(
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        task[index].delete();
                      }, 
                      child: TaskWidget(
                        task: task[index],
                      ),
                    ),
                  );
                }),
          );
        },
      ),
      floatingActionButton: Visibility(
        visible: show_tab,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return AddTaskScrean();
            }));
          },
          backgroundColor: Colors.green,
          child: Icon(
            Icons.add_alarm_sharp,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
