import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_task/components/headings.dart';
import 'package:to_do_task/navigation/tabBarNavigation.dart';
import 'package:to_do_task/screens/displayTaskPage.dart';

class TaskAddedPage extends StatelessWidget {
  const TaskAddedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(CustomTabBar());
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 91, 85, 202),
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Headings(
                text: "Your task has been created.",
                size: 25,
                weight: FontWeight.w700,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
