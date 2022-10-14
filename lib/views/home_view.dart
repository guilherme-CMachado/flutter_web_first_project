import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/widgets/call_to_action/call_to_action.dart';
import 'package:responsive_web_flutter/widgets/centered_view/centered_view.dart';
import 'package:responsive_web_flutter/widgets/course_details/course_details.dart';
import 'package:responsive_web_flutter/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            const MyNavBar(),
            Expanded(
              child: Row(
                children: const <Widget>[
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction(title: "Join Course"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
