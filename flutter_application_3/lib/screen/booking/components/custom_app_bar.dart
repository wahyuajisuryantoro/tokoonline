import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/constants/constant.dart';

class CustomAppBar extends StatefulWidget {
  final String movieName;

  CustomAppBar(this.movieName);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
        flex: 15,
        child: Container(
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                widget.movieName,
                style: TextStyle(
                    color: white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Positioned(
                left: 24,
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    height: size.height * 0.075,
                    width: size.width * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(color: white.withOpacity(0.35)
                        ),
                        borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Icon(Icons.arrow_back_ios,
                        color: white,
                        size: 18,),
                  ),
                  
                ),
              )
            ],
          ),
        ));
  }
}
