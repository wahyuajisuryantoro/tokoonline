import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/constants/constant.dart';
import 'package:flutter_application_3/screen/booking/components/date_selector.dart';
import 'package:flutter_application_3/screen/booking/components/location_text.dart';
import 'package:flutter_application_3/screen/booking/components/pay_button.dart';
import 'package:flutter_application_3/screen/booking/components/seat_selector.dart';
import 'package:flutter_application_3/screen/booking/components/time_selector.dart';
import 'package:flutter_application_3/screen/home/components/custom_app_bar.dart';

class BookingScreen extends StatefulWidget {
  final String movieName;

  BookingScreen({required this.movieName});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Padding
      (padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Column(
        children: [
          CustomAppBar(),

          DateSelector(),

          TimeSelector(),


          LocationText(),


          SeatSelector(),


          PayButton(),

          
        ],
      ), ),
    );
  }
}