import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:to_do_task/components/addTeamMemberCard.dart';
import 'package:to_do_task/components/headings.dart';
import 'package:to_do_task/components/purpleButton.dart';
import 'package:to_do_task/components/textLine.dart';
import 'package:to_do_task/mockData/addTeamMemberCardData.dart';
import 'package:to_do_task/models/addTeamMemberCardModel.dart';
import 'package:to_do_task/screens/addTaskPage.dart';

class AddMember extends StatelessWidget {
  const AddMember({super.key});

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
                      text: "Add Team Member",
                      size: 26,
                      weight: FontWeight.w700,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 60),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 244, 253),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15,right: 15),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  TextLine(lightText: "Search....", size: 18, weight: FontWeight.w500),
                                  Expanded(child: Container()),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 240, 244, 253),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(Icons.search,size: 25,color: Colors.black45,),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            ...addTeamMemberCardList.map((addTeamMemberCardList) => AddTeamMemberCard(data: addTeamMemberCardList)),
                            SizedBox(height: 20,),
                            PurpleButton(text: "Done", onTap: (){Get.to(AddTaskPage());
                            })
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