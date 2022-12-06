import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/constants/constant.dart';

class StarRating extends StatefulWidget {
  final double rating;
  StarRating(this.rating);

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    Widget star(bool fill){
      return Container(
        child: Icon(
          Icons.star,
          size: 18.0,
          color: fill ? Primary : grey,
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index){
        if(index <(widget.rating/2).round()){
          return star(true);
        }
        else{
          return star(false);
        }
      }),
    );
  }
}