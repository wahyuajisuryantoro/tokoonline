import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/navpages/main_page.dart';
import 'package:flutter_application_2/pages/welcome_page.dart';
import 'package:get/get.dart';
import 'helper/despendencies.dart' as dep;

import 'controller/poular_product_controller.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();

  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MainPage(),
    );
  }
}