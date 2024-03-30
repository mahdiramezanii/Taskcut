import "package:flutter/material.dart";
import "package:taskut_application/constant/colors.dart";

class TaskWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 150,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 237, 235, 235),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Checkbox(value: false, onChanged: (ValueKey) {}),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "تمرین زبان انگلیسی",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "تمرین زبان انگلیسی کتاب آموزشگاه",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
                child: Center(
                  child: Text("10:12"),
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
    );
  }
}
