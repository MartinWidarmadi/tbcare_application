// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:tbcare_application/pages/register_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tbcare_application/widgets/login_btn_widget.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController emailController = TextEditingController(text: "");
    TextEditingController passwordController = TextEditingController(text: "");
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top:95),
                child: const Text(
                  "TBCare",
                  style: TextStyle(
                      color: Color(0xff007E23),
                      fontSize: 70,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 45),
            height: 569,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Color(0xff73FE9A),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                  topRight: Radius.circular(75),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color(0xff007E23),
                    ),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Color(0xff007E23),
                    ),
                    hintText: 'Password',
                  ),
                ),
                // ElevatedButton(
                //     onPressed: () async {
                //       var auth = await FirebasePasienRepository()
                //           .accountAuth('desika@email.com', '123456');

                //       auth.when(
                //           success: (data) => print(data),
                //           failed: (message) => print(message));

                //       var ambilData = await FirebasePasienRepository()
                //           .getPasienData('3Os2TT3qvmTQetG6F0XYwLjGogp1');

                //       ambilData.when(
                //           success: (data) => print(data),
                //           failed: (message) => print(message));
                //     },
                //     child: const Text('test')),
                LoginBtnWidget(
                    emailController: emailController,
                    passwordController: passwordController,
                    ref: ref,
                    text: "Masuk"),
                const Text("Atau"),
                Container(
                    margin: const const EdgeInsets.fromLTRB(100, 20, 100, 25),
                    child: const Row(
                      children: <Widget>[
                        Icon(Icons.email, size: 35, color: Color(0xff007E23)),
                        Spacer(),
                        Icon(Icons.facebook,
                            size: 35, color: Color(0xff007E23)),
                        Spacer(),
                        Icon(Icons.apple, size: 35, color: Color(0xff007E23))
                      ],
                    )),
                DaftarBtn(context)
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget DaftarBtn(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const RegisterPage();
        }));
      },
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: 'Belum memiliki akun? ',
              style: TextStyle(color: Colors.black)),
          TextSpan(text: ' Daftar', style: TextStyle(color: Colors.blue))
        ]),
      ),
    );
  }
}
