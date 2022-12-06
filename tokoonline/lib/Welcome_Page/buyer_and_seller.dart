import 'package:flutter/material.dart';
import 'package:tokoonline/Buyer/home_screen.dart';
import 'package:tokoonline/Seller/list_view_product.dart';

class BuyerAndSeller extends StatelessWidget {
  const BuyerAndSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:ListView(
          children: [
            Image.asset('assets/image/logo.png',
            fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20,
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget> [
               ElevatedButton(
                onPressed: (() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) {
                    return HomeScreen();
                  })));
                }),
                child: Text(
                  'BUYER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(50.0, 50.0),                
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) {
                    return ListViewProduct();
                  })));
                }),
                child: Text(
                  'SELLER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(50.0, 50.0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
             ],
           )
          ],
          ),
         ),
    );
  }
}