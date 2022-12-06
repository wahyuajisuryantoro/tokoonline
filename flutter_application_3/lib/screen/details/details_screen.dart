import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/constants/constant.dart';
import 'package:flutter_application_3/model/movie_model.dart';
import 'package:flutter_application_3/screen/details/components/buy_button.dart';
import 'package:flutter_application_3/screen/details/components/detail_rubber_sheet.dart';
import 'package:rubber/rubber.dart';

import 'components/background.dart';
import 'components/custom_back_button.dart';


class DetailScreen extends StatefulWidget {
  final MovieModel movie;
  final Size size;
  DetailScreen({required this.movie, required this.size});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> with TickerProviderStateMixin {
  late RubberAnimationController rubberAnimationController;
  late ScrollController rubberSheetScrollController;


  @override
  void initState(){
    super.initState();
    rubberSheetScrollController = ScrollController();
    rubberAnimationController = RubberAnimationController(vsync:
     this,
     lowerBoundValue: AnimationControllerValue(pixel: widget.size.height * 0.75),
     dismissable: false,
     upperBoundValue: AnimationControllerValue(percentage: 0.9),
     duration: Duration(milliseconds: 300),
     springDescription: SpringDescription.withDampingRatio(mass: 1, stiffness: Stiffness.LOW, ratio: DampingRatio.MEDIUM_BOUNCY),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Background(background : widget.movie.image),

          DetailRubberSheet(widget.movie, rubberSheetScrollController, rubberAnimationController),

         BuyButton(widget.movie.name),

         CustomBackButton(context),

        
        ], ),
    );
  }
}