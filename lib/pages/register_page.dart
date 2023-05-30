import 'package:flutter/material.dart';
import 'package:tbcare_application/pages/login_page.dart';
import 'package:tbcare_application/widgets/widgets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  Widget MasukBtn(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const LoginPage();
        }));
      },
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: 'Sudah memiliki akun? ',
              style: TextStyle(color: Colors.black)),
          TextSpan(text: ' Masuk', style: TextStyle(color: Colors.blue))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController nikController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    TextEditingController namaController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 95),
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
                    height: 25,
                  ),
                  TextField(
                    controller: nikController,
                    decoration: const InputDecoration(
                      labelText: 'NIK',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: namaController,
                    decoration: const InputDecoration(
                      labelText: 'Nama',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Konfirmasi Password',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16.0),
                  RegisterBtnWidget(
                      nikController: nikController,
                      emailController: emailController,
                      passwordController: passwordController,
                      confirmPasswordController: confirmPasswordController,
                      namaController: namaController),
                  const SizedBox(
                    height: 15,
                  ),
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
                  MasukBtn(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
