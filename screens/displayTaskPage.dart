import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:to_do_task/components/circleAvatar.dart';
import 'package:to_do_task/components/displayTaskCard.dart';
import 'package:to_do_task/components/headings.dart';
import 'package:to_do_task/components/textLine.dart';
import 'package:to_do_task/mockData/displayTaskCardData.dart';
import 'package:to_do_task/models/displayTaskCardModel.dart';
import 'package:to_do_task/screens/addTaskPage.dart';

class DisplayTaskPage extends StatelessWidget {
  const DisplayTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
          child: Column(
            children: [
              Row(
                children: [
                  Headings(text: "Task", size: 26, weight: FontWeight.w800),
                  Expanded(child: Container()),
                  CircleAvatarAnimated(
                      image: AssetImage("assets/images/avatar3.png"))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLine(
                          lightText: "Nov 05,2023",
                          size: 18,
                          weight: FontWeight.w600),
                      Headings(text: "Today", size: 22, weight: FontWeight.w800)
                    ],
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () => Get.to(AddTaskPage()),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 15),
                      height: 55,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 107, 81),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white,
                          ),
                          Expanded(child: Container()),
                          Headings(
                            text: "Add Task",
                            size: 18,
                            weight: FontWeight.w700,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextLine(lightText: "MON", size: 18, weight: FontWeight.w500),
                  TextLine(lightText: "TUE", size: 18, weight: FontWeight.w500),
                  TextLine(lightText: "WED", size: 18, weight: FontWeight.w500),
                  TextLine(
                      lightText: "THUR", size: 18, weight: FontWeight.w500),
                  TextLine(lightText: "FRI", size: 18, weight: FontWeight.w500),
                  TextLine(lightText: "SAT", size: 18, weight: FontWeight.w500),
                  TextLine(lightText: "SUN", size: 18, weight: FontWeight.w500),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Headings(text: "10", size: 18, weight: FontWeight.w600),
                  Headings(text: "11", size: 18, weight: FontWeight.w600),
                  Headings(text: "12", size: 18, weight: FontWeight.w600),
                  Headings(text: "13", size: 18, weight: FontWeight.w600),
                  Headings(text: "14", size: 18, weight: FontWeight.w600),
                  Headings(text: "15", size: 18, weight: FontWeight.w600),
                  Headings(text: "16", size: 18, weight: FontWeight.w600),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.black26,
              ),
              SizedBox(
                height: 30,
              ),
              ...displayTaskCardList.map((displayTaskCardModel) =>
                  DisplayTaskCard(data: displayTaskCardModel)),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
