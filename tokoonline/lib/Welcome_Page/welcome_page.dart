import 'package:flutter/material.dart';
import 'package:tokoonline/Welcome_Page/login_page.dart';
import 'package:tokoonline/Welcome_Page/register_page.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            Image.asset('assets/image/logo.png',
            height: 297,
            width: 375,
            fit: BoxFit.fill),
            SizedBox(
              height: 13,
            ),
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width - 2 * 24,
              child: ElevatedButton(
                onPressed:(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                    return LoginScreen();
                  })));}
                ),
                child: Text('Login', 
                style:TextStyle(color: Colors.white,
                fontSize:15,
                fontWeight: FontWeight.w700,),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )),
                ),
            ),
            SizedBox(
              height:15,
            ),
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width - 2 * 24,
              child: ElevatedButton(
                onPressed:(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                    return RegisterPage();
                  })));}
                ),
                child: Text('Register', 
                style:TextStyle(color: Colors.green,
                fontSize:15,
                fontWeight: FontWeight.w700,
                ),

                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                  ),
                ),
            ),
          ],
        ),
        ),
    );
  }
}