import 'package:flutter/material.dart';

import '../constants/constant.dart';

class BuildChairs{
  static Widget selectedChair(){
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: Primary,
        borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }

  static Widget availableChair(){
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
          border: Border.all(color: white),
          borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }

  static Widget reservedChair(){
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }
}