import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:taskut_application/constant/colors.dart";

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        body: SafeArea(
            child: Column(
      children: [
        getHeaderProfile(),
        SizedBox(
          height: 30,
        ),
        SerachBox()
      ],
    )));
  }

  Widget SerachBox() {
    return Container(
      width: 380,
      height: 50,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          decoration: InputDecoration(
              hintText: "جستجوی تسکات",
              prefixIcon: Transform.scale(
                scale: 0.5,
                child: Image.asset(
                  "assets/images/search.png",
                ),
              ),
              suffixIcon: Transform.scale(
                scale: 0.5,
                child: Image.asset("assets/images/Filter.png"),
              ),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: MyColors.myGreen))),
        ),
      ),
    );
  }

  Widget getHeaderProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Color.fromRGBO(226, 246, 241, 1)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textDirection: TextDirection.rtl,
                "20 تسک فعال",
                style: TextStyle(
                    fontSize: 12,
                    color: MyColors.myGreen,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Image(image: AssetImage("assets/images/hand.png")),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "محمدجواد",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: MyColors.myGreen),
                  ),
                  Text(
                    "سلام،",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "6 شهریور",
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage("assets/images/profile.png"))),
          )
        ],
      ),
    );
  }
}
