// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_task/components/headings.dart';
import 'package:to_do_task/components/mainPageCard.dart';
import 'package:to_do_task/components/textLine.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 244, 253),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_box,
                      size: 35,
                      color: Color.fromARGB(255, 54, 24, 109),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Headings(text: "Taskito", size: 35, weight: FontWeight.w700)
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            Headings(text: "Manage", size: 40, weight: FontWeight.w700),
            Headings(
                text: "your task easily", size: 40, weight: FontWeight.w700),
            SizedBox(
              height: 20,
            ),
            TextLine(
                lightText:
                    "Easy way to manage daily task and office management",
                size: 18,
                weight: FontWeight.w600,
                textAlign: TextAlign.center),
            Expanded(child: Container()),
            MainPageCard(
              text: "Sign in with",
              image: AssetImage("assets/images/google.jpeg"),
            ),
            SizedBox(
              height: 20,
            ),
            MainPageCard(
              text: "Sign in with",
              image: AssetImage("assets/images/facebook.png"),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
