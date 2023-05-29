import 'package:flutter/material.dart';
import 'package:tbcare_application/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});


Widget MasukBtn(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginPage();
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
    TextEditingController _nikController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _confirmPasswordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 95),
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
                    height: 25,
                  ),
                  TextField(
                    controller: _nikController,
                    decoration: InputDecoration(
                      labelText: 'NIK',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      labelText: 'Konfirmasi Password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff007E23),
                        minimumSize: Size(300, 35)),
                    onPressed: () {
                      // Proses registrasi
                      String nik = _nikController.text;
                      String email = _emailController.text;
                      String password = _passwordController.text;
                      String confirmPassword = _confirmPasswordController.text;

                      // TODO: Implementasi logika registrasi sesuai kebutuhan

                      // Contoh validasi sederhana
                      if (nik.isNotEmpty &&
                          email.isNotEmpty &&
                          password.isNotEmpty &&
                          password == confirmPassword) {
                        // Registrasi berhasil
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Registrasi Berhasil'),
                              content:
                                  Text('Akun Anda telah berhasil didaftarkan.'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        // Registrasi gagal
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Registrasi Gagal'),
                              content: Text(
                                  'Mohon lengkapi semua informasi dengan benar.'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Text('Daftar'),
                  ),
                  const SizedBox(height: 15,),
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
