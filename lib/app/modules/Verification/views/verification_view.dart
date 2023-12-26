import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  const VerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/verif.png',
                  height: 112,
                ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  'Masukan kode unik yang kami kirim',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Silahkan periksa SMS kamu dan masukan kode unik\nyang kami kirimkan ke ',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      TextSpan(
                        text: '081290112333',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                Text('Kode Unik'),
                Container(
                  padding: EdgeInsets.all(8.0),
                  height: 42.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: TextField(
                    onSubmitted: (value) {
                      Navigator.pushNamed(context, 'home');
                    },
                    decoration: InputDecoration.collapsed(
                        hintText: 'Cth. q5TsgH***',
                        hintStyle: TextStyle(
                          color: Color(0xffA4B0BE),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: 'Tidak menerima SMS ? ',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  TextSpan(
                    text: 'Kirim ulang',
                    style: TextStyle(fontSize: 14.0, color: Colors.red),
                  ),
                ]))
              ],
            ),
          ),
        ));
  }
}
