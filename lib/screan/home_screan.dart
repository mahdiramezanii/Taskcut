import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:hive_flutter/hive_flutter.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:taskut_application/information.dart';
import 'package:taskut_application/task.dart';

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
              child: _get_task_item(title: task[index].title,subTitle: task[index].subTitle),
            );
          }),
    );
  }

  Widget _get_task_item({required String title,required String subTitle}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22),
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffFAFAFA)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MSHCheckbox(
                        size: 30,
                        value: is_check,
                        colorConfig:
                            MSHColorConfig.fromCheckedUncheckedDisabled(
                          checkedColor: Colors.blue,
                        ),
                        style: MSHCheckboxStyle.fillFade,
                        onChanged: (selected) {
                          setState(() {
                            is_check = !is_check;
                          });
                        },
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        title,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 83,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Color(0xff18DAA3),
                          borderRadius: BorderRadius.circular(16.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "10:00",
                              style: TextStyle(color: Colors.white),
                            ),
                            Image(
                              image: AssetImage("assets/images/Time.png"),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 83,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(226, 246, 241, 1),
                          borderRadius: BorderRadius.circular(16.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ویرایش",
                              style: TextStyle(
                                color: Color(0xff18DAA3),
                              ),
                            ),
                            Image(
                              image: AssetImage("assets/images/Edit.png"),
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Image(image: AssetImage("assets/images/t1.png"))
        ],
      ),
    );
  }
}
