import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/constants/constant.dart';

class CustomBackButton extends StatefulWidget {
  final BuildContext context;

  CustomBackButton(this.context);

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      left: 16,
      top:  MediaQuery.of(context).padding.top + appPadding,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Padding(
        padding: const EdgeInsets.all(appPadding / 3),
        child: Container(
          height: size.height * 0.075,
          width: size.width * 0.15,
          decoration: BoxDecoration(
            color: black.withOpacity(0.4),
            border: Border.all(
              color: white.withOpacity(0.35),
            ),
            borderRadius: BorderRadius.circular(20.0),

          ),
          child: Icon(
            Icons.arrow_back_ios,
            color: white,
            size: 16,)
           ) ,))
      );
  }
}