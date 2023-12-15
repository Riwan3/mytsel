import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                child: Image.asset('assets/logoLogin.png'),
              ),
              SizedBox(
                height: 46,
              ),
              Text(
                'Silahkan masuk dengan nomor\ntelkomsel kamu',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Nomor HP ',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.all(7.0),
                height: 42.0,
                decoration: BoxDecoration(border: Border.all(width: 1.0)),
                child: TextField(
                  textAlign: TextAlign.justify,
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Cth. 08129011xxxx',
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(value: true, onChanged: ((value) {})),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'Saya menyetujui '),
                          TextSpan(
                              text: 'syarat, ',
                              style: TextStyle(color: Colors.red)),
                          TextSpan(
                              text: 'ketentuan, ',
                              style: TextStyle(color: Colors.red)),
                          TextSpan(text: 'dan '),
                          TextSpan(
                              text: 'privasi',
                              style: TextStyle(color: Colors.red)),
                          TextSpan(text: '\nTelkomsel'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 42,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/Verification');
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 42,
                  width: double.infinity,
                  color: Colors.red,
                  child: Text(
                    'Lanjut',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  'Atau masuk menggunakan',
                  style: TextStyle(color: Color(0xff747D8C)),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      height: 42.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff1DA1F2),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/fb.png',
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              'Facebook',
                              style: TextStyle(color: Color(0xff1DA1F2)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      height: 42.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff3B5998),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/twt.png',
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              'Twitter',
                              style: TextStyle(color: Color(0xff3B5998)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
