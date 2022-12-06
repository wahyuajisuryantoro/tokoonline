import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/quickalert.dart';
import 'package:tokoonline/Buyer/components/header.dart';

import '../../Welcome_Page/buyer_and_seller.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  void showAlert(){
    QuickAlert.show(context: context, type: QuickAlertType.success , text: "Transaksi berhasil",
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 196),
      width: double.infinity,
      height: 380,
      child: Stack(children: [
        Positioned(
            left: 0,
            top: 0,
            child: Align(
              child: SizedBox(
                width: 320,
                height: 69,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff35a34d),
                  ),
                ),
              ),
            )),
        Positioned(
            left: 0,
            top: 65,
            child: Align(
              child: SizedBox(
                width: 320,
                height: 315,
                child: Container(
                  decoration: BoxDecoration(color: Color(0xffffffff)),
                ),
              ),
            )),
        Positioned(
            left: 18,
            top: 31,
            child: Align(
              child: SizedBox(
                width: 141,
                height: 15,
                child: Text(
                  '10 - 10 - 2022  09:30:14',
                  style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    height: 1.215,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            )),
        Positioned(
            left: 18,
            top: 75,
            child: Align(
                child: SizedBox(
                    width: 118,
                    height: 15,
                    child: Text(
                      "Metode Pembayaran",
                      style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.2125,
                        color: Color(0xcc000000),
                      ),
                    )))),
        Positioned(
            left: 203,
            top: 75,
            child: Align(
              child: SizedBox(
                width: 28,
                height: 15,
                child: Text(
                  "Total",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 12,
                    height: 1.2125,
                    color: Color(0xcc000000),
                  ),
                ),
              ),
            )),
        Positioned(
            left: 203,
            top: 154,
            child: Align(
              child: SizedBox(
                width: 83,
                height: 15,
                child: Text(
                  "Tipe Transaksi",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 12,
                    height: 1.2125,
                    color: Color(0xcc000000),
                  ),
                ),
              ),
            )),
            Positioned(
            left: 18,
            top: 154,
            child: Align(
              child: SizedBox(
                width: 94,
                height: 15,
                child: Text(
                  "Status Transaksi",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 12,
                    height: 1.2125,
                    color: Color(0xcc000000),
                  ),
                ),
              ),
            )),
            Positioned(
            left: 18,
            top: 90,
            child: Align(
              child: SizedBox(
                width: 28,
                height: 15,
                child: Text(
                  "COD",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 12,
                    height: 1.2125,
                    color: Color(0xcc000000),
                  ),
                ),
              ),
            )),
            Positioned(
            left: 203,
            top: 87,
            child: Align(
              child: SizedBox(
                width: 63,
                height: 15,
                child: Text(
                  "Rp. 80.000",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 12,
                    height: 1.2125,
                    color: Color(0xcc000000),
                  ),
                ),
              ),
            )),
           Positioned(
            left: 205,
            top: 169,
            child: Align(
              child: SizedBox(
                width: 92,
                height: 15,
                child: Text(
                  "Bayar di Tempat",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 12,
                    height: 1.2125,
                    color: Color(0xcc000000),
                  ),
                ),
              ),
            )),
            Positioned(
            left: 28,
            top: 318,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green
              ),
                onPressed: () {
                  AlertDialog();
                },
            child:Text(
              "Bayar Sekarang"
            )),
            )
      ]),
    );
  }
}
