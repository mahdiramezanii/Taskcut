import "package:flutter/material.dart";
import "package:taskut_application/constant/colors.dart";
import "package:taskut_application/models/task_model.dart";

class TaskWidgets extends StatefulWidget {
  TaskWidgets({required this.task});
  Task task;
  @override
  State<TaskWidgets> createState() => _TaskWidgetsState();
}

class _TaskWidgetsState extends State<TaskWidgets> {
  bool is_check = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Checkbox(
                    activeColor: MyColors.myGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    value: is_check,
                    onChanged: (ValueKey) {
                      setState(() {
                        is_check = !is_check;
                      });
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${widget.task.title}",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "${widget.task.subtitle}",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Image(
                    image: AssetImage(widget.task.type.image),
                    width: 100,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 83,
                    height: 30,
                    decoration: BoxDecoration(
                      color: MyColors.myGreen,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            "${widget.task.time.hour}:${widget.task.time.minute}"),
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
                    height: 30,
                    decoration: BoxDecoration(
                      color: MyColors.SecoundGreen,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("ویرایش"),
                          Image.asset(
                            "assets/images/Edit.png",
                            width: 20,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
