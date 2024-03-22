import "package:flutter/material.dart";
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:taskut_application/task.dart';

class TaskWidget extends StatefulWidget {
  TaskWidget({required this.task});

  Task task;

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool is_check = true;

  @override
  void initState() {
    is_check = widget.task.is_done;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          is_check = !is_check;
          widget.task.is_done = is_check;
          widget.task.save();
        });
      },
      child: Container(
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
                        Checkbox(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                          side: BorderSide(color: Colors.blue)
                        ) , value: is_check, onChanged: (on_change){

                         setState(() {
                            is_check=on_change!;
                         });
                          
                        }),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          widget.task.title,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Text(
                      widget.task.subTitle,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
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
      ),
    );
  }
}
