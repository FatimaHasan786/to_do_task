import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:to_do_task/components/circleAvatar.dart';
import 'package:to_do_task/components/folderTicketPageCard.dart';
import 'package:to_do_task/components/headings.dart';
import 'package:to_do_task/components/textLine.dart';

class FolderTickPage extends StatelessWidget {
  const FolderTickPage({super.key});

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
                    Expanded(child: Container()),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 90),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 244, 253),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Headings(
                        text: 'Devignedge App Design',
                        size: 24,
                        weight: FontWeight.w800),
                    SizedBox(
                      height: 10,
                    ),
                    Headings(
                      text:
                          "Devignedge App Design - A to-do app helps users organize tasks. Users create, edit, and prioritize tasks, set deadlines, and mark them as done.",
                      size: 16,
                      weight: FontWeight.w500,
                      color: Colors.black45,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        TextLine(
                            lightText: 'TEAMS',
                            size: 16,
                            weight: FontWeight.w500),
                        SizedBox(
                          width: 130,
                        ),
                        TextLine(
                            lightText: 'EST.DATE',
                            size: 16,
                            weight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        CircleAvatarAnimated(
                            image: AssetImage("assets/images/avatar6.jpeg")),
                        CircleAvatarAnimated(
                            image: AssetImage("assets/images/avatar4.jpeg")),
                        CircleAvatarAnimated(
                            image: AssetImage("assets/images/avatar5.png")),
                            SizedBox(width: 30,),
                            Headings(
                        text: 'Nov 30, 2023',
                        size: 20,
                        weight: FontWeight.w600),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Headings(
                        text: 'Task',
                        size: 20,
                        weight: FontWeight.w700),
                        Expanded(child: Container()),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 183, 183, 183),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    FolderTickPageCard(text: "Create user flow",color: Color.fromARGB(255, 45, 194, 156),icon: Icons.check,),
                    FolderTickPageCard(text: "Create onboarding pages"),
                    FolderTickPageCard(text: "Discuss about UX issue with Niik"),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        CircleAvatarAnimated(image: AssetImage("assets/images/avatar3.png"),),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Headings(text: 'Mubashira Jaffer', size: 20, weight: FontWeight.w600),
                            TextLine(lightText: "Product Manager", size: 16, weight: FontWeight.w500)
                          ],
                        ),
                        Expanded(child: Container()),
                        Headings(text: "Now", size: 16, weight: FontWeight.w500)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 60,),
                        Image.asset('assets/images/Check1.png',height: 40,width: 70,),
                        Image.asset('assets/images/Check2.png',height: 40,width: 80,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Headings(text: "@nik we need to check this page. Make a meeting eith UX Designer.", size: 16, weight: FontWeight.normal,softWrap: true,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//comment