import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tokoonline/Welcome_Page/welcome_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget 
  build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Online',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}