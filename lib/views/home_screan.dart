import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:taskut_application/constant/colors.dart";
import "package:taskut_application/widgets/task_widget.dart";
import "package:timeline_tile/timeline_tile.dart";

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              getHeaderProfile(),
              SizedBox(
                height: 30,
              ),
              SerachBox(),
              SizedBox(
                height: 20,
              ),
              CategoryRow(),
              SizedBox(
                height: 20,
              ),
              Task(),
              SizedBox(
                height: 10,
              ),
              TaskWidgets(),
              SizedBox(
                height: 10,
              ),
              TaskWidgets(),
            ],
          ),
        ),
      ),
    );
  }

  Widget Task() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "مشاهده بیشتر",
                style: TextStyle(
                  color: MyColors.myGreen,
                  fontSize: 17,
                ),
              ),
              Spacer(),
              Text(
                "تسک های امروز",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TimelineTile(
                  axis: TimelineAxis.horizontal,
                  alignment: TimelineAlign.center,
                  beforeLineStyle:
                      LineStyle(color: MyColors.myGreen, thickness: 2),
                  indicatorStyle: IndicatorStyle(color: MyColors.myGreen),
                  endChild: Text(
                    "10-12",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                TimelineTile(
                  axis: TimelineAxis.horizontal,
                  beforeLineStyle:
                      LineStyle(color: MyColors.myGreen, thickness: 2),
                  alignment: TimelineAlign.center,
                ),
                TimelineTile(
                  axis: TimelineAxis.horizontal,
                  beforeLineStyle:
                      LineStyle(color: MyColors.myGreen, thickness: 2),
                  alignment: TimelineAlign.center,
                ),
                TimelineTile(
                  axis: TimelineAxis.horizontal,
                  beforeLineStyle:
                      LineStyle(color: MyColors.myGreen, thickness: 2),
                  alignment: TimelineAlign.center,
                ),
                TimelineTile(
                  axis: TimelineAxis.horizontal,
                  beforeLineStyle:
                      LineStyle(color: MyColors.myGreen, thickness: 2),
                  alignment: TimelineAlign.center,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget CategoryRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "مشاهده بیشتر",
                style: TextStyle(color: MyColors.myGreen, fontSize: 17),
              ),
              Spacer(),
              Text(
                "دسته بندی",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image(image: AssetImage("assets/images/card1.png")),
                        Positioned(
                          bottom: 12,
                          child: Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text("آموزشی")),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget SerachBox() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        color: Colors.white,
        elevation: 0.5,
        child: Container(
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
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
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
              color: Color.fromRGBO(226, 246, 241, 1),
            ),
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
