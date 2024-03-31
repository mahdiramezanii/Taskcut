import "package:flutter/material.dart";
import "package:taskut_application/constant/colors.dart";

class TaskWidgets extends StatefulWidget {
  @override
  State<TaskWidgets> createState() => _TaskWidgetsState();
}

class _TaskWidgetsState extends State<TaskWidgets> {
  bool is_check = false;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
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
                        "تمرین زبان انگلیسی",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "تمرین زبان انگلیسی کتاب آموزشگاه",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Image(image: AssetImage("assets/images/t1.png"))
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
                          Text("10:12"),
                          Image(image: AssetImage("assets/images/Time.png"))
                        ],
                      )),
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
