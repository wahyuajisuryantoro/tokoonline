import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'buyer_and_seller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isVisible = false;
  TextEditingController EmailController = TextEditingController();
  TextEditingController NoWaController = TextEditingController();
  TextEditingController AlamatController = TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController date=TextEditingController();
  TextEditingController ConfirmPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child : ListView(
            padding: EdgeInsets.all(10),
            children: <Widget> [
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
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 24,
                fontFamily: GoogleFonts.workSans().fontFamily        
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Text('|',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 24,
              fontFamily: GoogleFonts.workSans().fontFamily
            ),
            ),
            SizedBox(
              width: 25,
            ),
            Text('Register',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w700,
              fontSize: 24,
              fontFamily: GoogleFonts.workSans().fontFamily
            ),
            ),
          ],
        ),
              ),
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Text('Silahkan masuk menggunakan akun yang telah anda buat',
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
                controller: EmailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                  labelText: 'Email'  
                  ),
              ),
            ),
             Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: AlamatController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                  labelText: 'Alamat'  
                  ),
              ),
            ),
             Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: date,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                  labelText: 'Tanggal Lahir'  
                  ),
                  onTap: () async{
                    DateTime? pickeddate = await showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(), 
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101)
                      );
                      if(pickeddate !=null){
                        setState(() {
                          date.text = DateFormat('yyyy-MMM-dd').format(pickeddate);
                        });
                      }
                  },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: NoWaController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                  labelText: 'No Whatsapp Aktif'
                  ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: passwordController,
                obscureText: _isVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                  labelText: 'Kata Sandi',
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      _isVisible = ! _isVisible;
                    });
                  },
                  icon: _isVisible? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                  ) 
                  )
              ),
            ),
             Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: ConfirmPasswordController,
                obscureText: _isVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                  labelText: 'Konfirmasi Kata Sandi',
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      _isVisible = ! _isVisible;
                    });
                  },
                  icon: _isVisible? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                  ), 
                  ),

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
                  'Register',
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
            ]
          )
          )
      );
  }
}