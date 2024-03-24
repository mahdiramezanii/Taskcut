import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:taskut_application/task.dart";
import "package:taskut_application/utility.dart";
import "package:time_pickerr/time_pickerr.dart";

class AddTaskScrean extends StatefulWidget {
  @override
  State<AddTaskScrean> createState() => _AddTaskScreanState();
}

class _AddTaskScreanState extends State<AddTaskScrean> {
  var tsakBox = Hive.box<Task>("task");
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();
  DateTime? _time;
  var taskTypeList = task_type_list();
  int selected_index = 0;

  TextEditingController textController = TextEditingController();
  TextEditingController subTextController = TextEditingController();

  @override
  void initState() {
    negahban1.addListener(() {
      setState(() {});
    });
    negahban2.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                controller: textController,
                maxLines: 1,
                focusNode: negahban1,
                decoration: InputDecoration(
                  hintText: "عنوان تسک را وارد کنید",
                  label: Text("عنوان را وارد کنید"),
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 2, color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 4, color: Colors.green),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                controller: subTextController,
                maxLines: 2,
                focusNode: negahban2,
                decoration: InputDecoration(
                  hintText: "توضیحات تسک را وارد کنید",
                  label: Text("توضیحات تسک"),
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 2, color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 4, color: Colors.green),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomHourPicker(
              elevation: 3,
              onPositivePressed: (context, time) {
                print(time.hour);
                print(time);
                _time = time;
              },
              onNegativePressed: (context) {},
              positiveButtonStyle: TextStyle(color: Colors.blue, fontSize: 20),
              positiveButtonText: "انتخاب تاریخ",
              negativeButtonStyle: TextStyle(color: Colors.red, fontSize: 20),
              negativeButtonText: "لغو",
              initDate: DateTime.now(),
              title: "ساعت را وارد کنید",
              titleStyle: TextStyle(color: Colors.green, fontSize: 24),
            ),
            SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: taskTypeList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selected_index = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 116, 199, 119),
                            border: Border.all(
                                width: 4,
                                color: selected_index == index
                                    ? Colors.blue
                                    : Colors.grey),
                          ),
                          child: Image(
                            image:
                                AssetImage(taskTypeList.elementAt(index).image),
                          ),
                        ),
                      );
                    })),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(200, 60),
                maximumSize: Size(300, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: () {
                var task = Task(
                    title: textController.text.toString(),
                    subTitle: subTextController.text,
                    time: _time!);
                tsakBox.add(
                  Task(
                      title: task.title,
                      subTitle: task.subTitle,
                      time: task.time),
                );

                Navigator.pop(context);
              },
              child: Text(
                "ذخیره تسک",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
