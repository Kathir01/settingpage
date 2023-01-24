import 'package:flutter/material.dart';

import '../pages/my_home_page/my_home_page.dart';

class CommonContainer extends StatelessWidget {
  CommonContainer(
      {required this.text,
      required this.text1,
      required this.icon,
      required this.color,
      required this.color1,
      required this.color2,
      required this.trailing});
  @override
  final Color color;
  final String text;
  final String text1;
  final IconData icon;
  final Color color1;
  final Color color2;
  final Widget trailing;
  // final String image;
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          radius: 30, backgroundColor: color, child: Icon(icon, color: color1)),
      title: Text(text),
      trailing: trailing,
      // Container(
      //     height: 40,
      //     width: 40,
      //     decoration: BoxDecoration(
      //       borderRadius: BoxBorders.primaryBoxBorder,
      //       color: color2,
      //     ),
      //     child: Icon(Icons.chevron_right, color: Colors.black)),
      subtitle: Text(text1),
    );
  }
}
