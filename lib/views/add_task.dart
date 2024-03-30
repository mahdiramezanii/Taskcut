import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:taskut_application/constant/colors.dart";

class AddTaskScrean extends StatefulWidget {
  @override
  State<AddTaskScrean> createState() => _AddTaskScreanState();
}

class _AddTaskScreanState extends State<AddTaskScrean> {
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();

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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "اضافه کردن تسک",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: MyColors.myGreen,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
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
                  height: 50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.myGreen,
                      minimumSize: Size(200, 50),
                      maximumSize: Size(200, 60)),
                  onPressed: () {},
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
    );
  }
}
