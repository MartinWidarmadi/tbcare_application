import 'package:flutter/material.dart';
import 'package:tbcare_application/pages/home_page.dart';
import 'package:tbcare_application/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Widget LgnBtn(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff007E23),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomePage();
          }));
        },
        child: const Text(
          "Masuk",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget DaftarBtn(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return RegisterPage();
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

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController(text: "");
    TextEditingController emailPass = TextEditingController(text: "");
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:95),
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
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 45),
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
                  controller: emailPass,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Color(0xff007E23),
                    ),
                    hintText: 'Password',
                  ),
                ),
                LgnBtn(context),
                const Text("Atau"),
                Container(
                    margin: EdgeInsets.fromLTRB(100, 20, 100, 25),
                    child: Row(
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
}
