import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_task/components/circleAvatar.dart';
import 'package:to_do_task/components/donutChart.dart';
import 'package:to_do_task/components/headings.dart';
import 'package:to_do_task/components/homePageCard.dart';
import 'package:to_do_task/mockData/homeCardData.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              height: MediaQuery.sizeOf(context).height / 2.3,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Headings(
                          text: "DashBoard", size: 22, weight: FontWeight.w800),
                      Expanded(child: Container()),
                      CircleAvatarAnimated(
                          image: AssetImage("assets/images/avatar3.png"))
                    ],
                  ),
                  SizedBox(height: 40,),
                  DonutChart()
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 100),
              child: Column(
                children: [
                  ...homeCardList
                      .map((homeCard) => HomePageCard(data: homeCard))
                      .toList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

