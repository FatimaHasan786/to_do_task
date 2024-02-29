import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_task/components/boardCardContainer.dart';
import 'package:to_do_task/components/circleAvatar.dart';
import 'package:to_do_task/components/headings.dart';
import 'package:to_do_task/components/purpleButton.dart';
import 'package:to_do_task/components/textLine.dart';
import 'package:to_do_task/screens/addMember.dart';
import 'package:to_do_task/screens/taskAdded.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 91, 85, 202),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 6,
                    ),
                    Headings(
                      text: "Add Task",
                      size: 26,
                      weight: FontWeight.w700,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 90),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 244, 253),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextLine(
                        lightText: "TASK NAME",
                        size: 18,
                        weight: FontWeight.w500),
                    TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextLine(
                        lightText: "TEAM MEMBER",
                        size: 18,
                        weight: FontWeight.w500),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatarAnimated(
                            image: AssetImage("assets/images/avatar3.png")),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatarAnimated(
                            image: AssetImage("assets/images/avatar4.jpeg")),
                        SizedBox(
                          width: 10,
                        ),
                        Stack(children: [
                          CircleAvatarAnimated(
                              image: AssetImage("assets/images/avatar6.jpeg")),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromARGB(200, 48, 44, 123),
                              ),
                              child: Icon(
                                Icons.check,
                                size: 30,
                                color: Colors.white,
                              ))
                        ]),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatarAnimated(
                            image: AssetImage("assets/images/avatar5.png")),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(AddMember());
                          },
                          child: DottedBorder(
                            borderType: BorderType.Circle,
                            radius: Radius.circular(50),
                            strokeWidth: 1,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: ShapeDecoration(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                  )),
                              child: Icon(Icons.add),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        TextLine(
                            lightText: 'John',
                            size: 15,
                            weight: FontWeight.w500),
                        SizedBox(
                          width: 18,
                        ),
                        TextLine(
                            lightText: 'Rama',
                            size: 15,
                            weight: FontWeight.w500),
                        SizedBox(
                          width: 15,
                        ),
                        TextLine(
                            lightText: 'Mayuri',
                            size: 15,
                            weight: FontWeight.w500),
                        SizedBox(
                          width: 15,
                        ),
                        TextLine(
                            lightText: 'Parko',
                            size: 15,
                            weight: FontWeight.w500)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextLine(
                        lightText: "DATE", size: 18, weight: FontWeight.w500),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Headings(
                            text: "Nov 06, 2023",
                            size: 20,
                            weight: FontWeight.w600),
                        Expanded(child: Container()),
                        Icon(Icons.calendar_today_outlined)
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        TextLine(
                            lightText: "START TIME",
                            size: 18,
                            weight: FontWeight.w600),
                        SizedBox(
                          width: 80,
                        ),
                        TextLine(
                            lightText: "END TIME",
                            size: 18,
                            weight: FontWeight.w600),
                      ],
                    ),
                    Row(
                      children: [
                        Headings(
                            text: "10:00 AM",
                            size: 18,
                            weight: FontWeight.w500),
                        SizedBox(
                          width: 60,
                        ),
                        Icon(Icons.arrow_drop_down),
                        SizedBox(
                          width: 20,
                        ),
                        Headings(
                            text: "1:00 PM", size: 18, weight: FontWeight.w500),
                        SizedBox(
                          width: 60,
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextLine(
                        lightText: 'DESCRIPTION',
                        size: 18,
                        weight: FontWeight.w500),
                    TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BoardCardContainer(),
                    SizedBox(height: 70,),
                    PurpleButton(text: "Create New Task", onTap: () {Get.to(TaskAddedPage()); },)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


