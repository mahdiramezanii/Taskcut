import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:taskut_application/task.dart";

class EditTaskScrean extends StatefulWidget {
  @override
  State<EditTaskScrean> createState() => _EditTaskScreanState();
  EditTaskScrean({required this.task});

  Task task;
}

class _EditTaskScreanState extends State<EditTaskScrean> {
  var tsakBox = Hive.box<Task>("task");
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();

  TextEditingController? textController;
  TextEditingController? subTextController;

  @override
  void initState() {
    negahban1.addListener(() {
      setState(() {});
    });
    negahban2.addListener(() {
      setState(() {});
    });

    textController = TextEditingController(text: widget.task!.title);
    subTextController = TextEditingController(text: widget.task!.subTitle);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: Size(200, 60),
              maximumSize: Size(300, 60),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            onPressed: () {

              var title=textController!.text;
              var subtitle=subTextController!.text;
              widget.task.title=title;
              widget.task.subTitle=subtitle;
              widget.task.save();

              Navigator.pop(context);
            },
            child: Text(
              "ذخیره تسک",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
