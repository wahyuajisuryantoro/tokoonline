import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tokoonline/Seller/report.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool? isChecked = false;
  bool? nowChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
        Column(
          children: <Widget> [
            Container(
              child:
               Text(
                 "Order",
                 style: TextStyle(
                   fontFamily: GoogleFonts.poppins().fontFamily,
                   fontSize: 15,
                   fontWeight: FontWeight.w600,
                   color:  Color(0xff000000)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(12, 0, 17.51, 0),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.fromLTRB(0, 0, 25, 0),
                    child: Text(
                      "Pemesanan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10 ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.fromLTRB(0, 0, 41.5, 0),
                    child: 
                    Text(
                      "Produk",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10),),
                  ),
                  Container(
                    margin:  EdgeInsets.fromLTRB(0, 0, 43.5, 0),
                    child: 
                    Text(
                      "Jumlah",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10)),
                  ),
                  Container(
                    margin:  EdgeInsets.fromLTRB(0, 0, 33.5, 0),
                    constraints: BoxConstraints(
                      maxWidth: 33 ),
                    child: 
                    Text(
                      "Total Harga",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        height: 1.5,
                        letterSpacing: -0.1 ),
                        ),
                      
                  ),
                  Text("Selesai",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                        fontSize: 10)
                 )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffb5b7c0) ),

            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              width: double.infinity,
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 0, 20.01, 21),
                    width: double.infinity,
                    height: 32,
                    child: 
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 25, 17),
                          child: 
                          Text(
                            "Dipo",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10
                            ),
                          ),
                        ),
                        Container(
                          margin:  EdgeInsets.fromLTRB(0, 3, 49.5, 1),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Semangka",
                                style: TextStyle(
                                  fontSize: 10),
                              ),
                              Text(
                                "Rp.30.000",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color:  Color(0xff13932f)),)
                            ],
                          ),
                        ),
                        Container(
                    margin: EdgeInsets.fromLTRB(0, 3, 50.5, 0),
                    child: Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)
                      ),
                    ),
                  ),
                  Container(
                    margin:   EdgeInsets.fromLTRB(0, 3, 27, 0),
                    child: Text(
                      "Rp 60.000",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                    width: 30,
                    height: 30,
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (newBool){
                        setState(() {
                          isChecked = newBool;
                        });
                      },
                    ),
                  ),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(27.5, 0, 20.01, 452),
              width: double.infinity,
              height: 30,
              child: 
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 27, 0),
                    height: double.infinity,
                    child:
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                           margin: EdgeInsets.fromLTRB(0, 1, 28.5, 0),
                           child: 
                           Text(
                             "Siti",
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 10,
                               ),),
                         ),
                         Container(
                           margin:  EdgeInsets.fromLTRB(0, 0, 53.5, 3),
                           width: 52,
                           height: 27,
                           child: 
                           Stack(
                             children: [
                               Positioned(
                                 left: 0,
                                 top: 0,
                                 child: 
                                   Align(
                                     child: 
                                     SizedBox(
                                       width: 34,
                                       height: 15,
                                       child: 
                                       Text(
                                         "Anggur",
                                         style: 
                                           TextStyle(
                                            fontSize:10 ),
                                       ),
                                     ),
                                   )
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 14,
                                    child: 
                                    Align(
                                      child: 
                                      SizedBox(
                                        width:52,
                                        height: 13,
                                        child: 
                                        Text(
                                          "Rp 80.000",
                                          style: 
                                          TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff13932f)
                                          )
                                        )
                                      ),
                                    )
                                  ),
                             ],
                           ),
                         ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1, 51.5, 0),
                          child: 
                           Text(
                             "1",
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 10 ),
                               ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: 
                          Text(
                            "Rp 80.000",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                           ),
                          ),
                        )
                       ],
                    ),
                  ),
                  Container(
                    padding:  EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 30,
                    width: 30,
                    child: Checkbox(
                      value: nowChecked,
                      onChanged: (newBool){
                        setState(() {
                          nowChecked = newBool;
                        });
                      },
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}