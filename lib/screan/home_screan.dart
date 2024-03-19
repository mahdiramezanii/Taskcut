
import "package:flutter/material.dart";
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskut_application/information.dart';

class HomeApp extends StatefulWidget {
  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var textController = TextEditingController();

  String text = " ";
  var box=Hive.box("names");
  var boxInfo=Hive.box<Information>("info");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: textController,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "$text",
            style: TextStyle(fontSize: 17),
          ),
          TextButton(
            onPressed: () {
              setState(
                () {
                  text = textController.text;
                },
              );
            },
            child: Text(
              "ذخیره متن",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              box.put(1, "value");
              boxInfo.put(2, Information(name: "mahdi",age: 22,addres: "Bandarabbas"));
            },
            child: Text(
              "دخیره اطلاعات",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),

                    ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              print(box.get(1));
              print(boxInfo.get(2)!.addres);
            },
            child: Text(
              "گرفتن اطلاعات",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
