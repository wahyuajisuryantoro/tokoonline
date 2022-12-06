import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tokoonline/Welcome_Page/buyer_and_seller.dart';

import 'register_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var obscureText = true;
  bool _isVisible = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: GoogleFonts.workSans().fontFamily),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: GoogleFonts.workSans().fontFamily),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: GoogleFonts.workSans().fontFamily),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Silahkan masuk menggunakan akun yang telah anda buat',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    labelText: 'Email'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                  controller: passwordController,
                  obscureText: _isVisible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: _isVisible
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ))),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Lupa Password?',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontFamily: GoogleFonts.urbanist().fontFamily),
              ),
            ),
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width - 2 * 24,
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) {
                    return BuyerAndSeller();
                  })));
                }),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
          ],
        )));
  }
}
