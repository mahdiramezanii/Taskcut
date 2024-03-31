import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:taskut_application/api/local/task_type_list.dart";
import "package:taskut_application/constant/colors.dart";
import "package:taskut_application/models/task_model.dart";
import "package:time_pickerr/time_pickerr.dart";

class AddTaskScrean extends StatefulWidget {
  @override
  State<AddTaskScrean> createState() => _AddTaskScreanState();
}

class _AddTaskScreanState extends State<AddTaskScrean> {
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();

  TextEditingController taskTitle = TextEditingController();
  TextEditingController taskSubTitle = TextEditingController();

  DateTime? _time;

  var task_type = taskTypeList();
  var selectedIndex = 0;
  var task = Hive.box<Task>("Task");

  @override
  void initState() {
    super.initState();
    negahban1.addListener(() {});
    negahban2.addListener(() {});
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 14,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      controller: taskTitle,
                      focusNode: negahban1,
                      decoration: InputDecoration(
                        hintText: "عنوان تسک را وارد کنید",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: MyColors.myGreen, width: 3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      controller: taskSubTitle,
                      maxLines: 3,
                      focusNode: negahban2,
                      decoration: InputDecoration(
                        hintText: "توضیحات تسک را وارد کنید",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: MyColors.myGreen, width: 3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomHourPicker(
                    elevation: 2,
                    onPositivePressed: (context, time) {
                      _time = time;
                    },
                    onNegativePressed: (context) {
                      print('onNegative');
                    },
                    title: "ساعت را انتخاب کنید",
                    titleStyle: TextStyle(
                      color: MyColors.myGreen,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: task_type.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  height: 170,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: MyColors.SecoundGreen,
                                    image: DecorationImage(
                                        image:
                                            AssetImage(task_type[index].image)),
                                    border: Border.all(
                                        color: selectedIndex == index
                                            ? MyColors.myGreen
                                            : Colors.grey,
                                        width: selectedIndex == index ? 4 : 2),
                                  ),
                                ),
                                Text(
                                  task_type[index].title,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: MyColors.myGreen),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.myGreen,
                        minimumSize: Size(200, 50),
                        maximumSize: Size(200, 60)),
                    onPressed: () {
                      task.add(
                        Task(
                          title: taskTitle.text,
                          subtitle: taskSubTitle.text,
                          time: _time!,
                          type: task_type[selectedIndex],
                        ),
                      );
                      print(task.values.first.subtitle);
                    },
                    child: Text(
                      "اضافه کردن",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
