import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 150,
            width: 80,
            child: Image.asset("assets/images/logo.png"),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              NavBarItem(title: "Episodes"),
              SizedBox(width: 60),
              NavBarItem(title: "About"),
            ],
          )
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;

  const NavBarItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18),
    );
  }
}
