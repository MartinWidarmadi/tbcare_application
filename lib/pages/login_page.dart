import 'package:flutter/material.dart';
import 'package:tbcare_application/data/providers/firebase_providers/user/firebase_user_repository_provider.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:tbcare_application/data/usecases/sign_in.dart';
import 'package:tbcare_application/pages/home_page.dart';
import 'package:tbcare_application/pages/register_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                margin: const EdgeInsets.only(top: 25),
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
            margin: const EdgeInsets.only(top: 35),
            height: 541,
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
                LgnBtn(context, emailController.text.trim(),
                    emailPass.text.trim(), ref),
                const Text("Atau"),
                Container(
                    margin: const EdgeInsets.fromLTRB(100, 20, 100, 25),
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

  Widget LgnBtn(
      BuildContext context, String email, String password, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff007E23),
        ),
        onPressed: () async {
          SignInParams params = SignInParams(email: email, password: password);

          SignIn signIn = SignIn(ref.watch(firebaseUserRepositoryProvider));

          TResult<String> result = await signIn.call(params);

          result.when(
              success: (value) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              failed: (errorMessage) => print(errorMessage));
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
