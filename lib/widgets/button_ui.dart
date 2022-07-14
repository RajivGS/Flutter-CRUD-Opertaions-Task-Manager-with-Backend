import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundcolor;
  final String name;
  final Color textColor;
  const ButtonWidget({
    Key? key,
    required this.backgroundcolor,
    required this.name,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  margin: const EdgeInsets.all(4),
      height: MediaQuery.of(context).size.height / 14,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: backgroundcolor, borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          name,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
      ),
    );
  }
}
