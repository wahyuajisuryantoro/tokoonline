import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/constants/constant.dart';
import 'package:flutter_application_3/data/data.dart';

class BackgroundListView extends StatefulWidget {
  final ScrollController backgroundScrollController;
  BackgroundListView(this.backgroundScrollController);

  @override
  State<BackgroundListView> createState() => _BackgroundListViewState();
}

class _BackgroundListViewState extends State<BackgroundListView> {
  var movieData = MovieData();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      controller: widget.backgroundScrollController,
      reverse: true,
      padding: EdgeInsets.zero,
      itemCount: movieData.movieList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
            width: size.width,
            height: size.height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    left: -size.width / 3,
                    right: -size.width / 3,
                    child: Image(
                      image: movieData.movieList[index].image.image,
                      fit: BoxFit.cover,
                    )),
                Container(
                  color: black.withOpacity(0.4),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      black.withOpacity(0.3),
                      black.withOpacity(0.95)

                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.5,0.9]
                    ) ),
                )
              ],
            ));
      },
    );
  }
}
