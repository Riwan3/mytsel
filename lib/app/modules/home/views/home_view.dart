import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/background_home.png',
          height: 250,
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.only(top: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hai, Muhammad',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/qr_home.png', width: 25.0),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.only(top: 85.0, right: 20.0, left: 20.0),
          height: 210,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 217, 14, 0),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(90.0),
              bottomLeft: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '081290112333',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Image.asset(
                    'assets/simpati_logo.png',
                    height: 15,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Sisa Pulsa Anda',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp34.000',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 40.0),
                    alignment: Alignment.center,
                    height: 30.0,
                    width: 70.0,
                    child: Text(
                      'Isi pulsa',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Berlaku sampai ',
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                      text: '19 April 2020',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '\nTelkomsel POIN ',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: ' 172 ',
                      style: TextStyle(
                          backgroundColor: Colors.amber,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
