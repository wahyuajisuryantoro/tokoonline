import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/constant.dart';
import 'package:flutter_application_3/screen/home/components/background_list_view.dart';
import 'package:flutter_application_3/screen/home/components/movie_list_view.dart';

import 'components/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Size get size => MediaQuery.of(context).size;

  double get movieItemWidth => size.width/ 2 + 48;

  ScrollController backgroundScrollController = ScrollController();
  ScrollController movieScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    movieScrollController.addListener(() {
      backgroundScrollController.jumpTo(movieScrollController.offset * (size.width/ movieItemWidth));
    });
    return Scaffold(
      backgroundColor: black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          BackgroundListView(backgroundScrollController),

          MovieListView(movieScrollController, movieItemWidth),

          CustomAppBar(),
        ]),
    );
  }
}