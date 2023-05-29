import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tbcare_application/data/providers/firebase_providers/pasien/firebase_pasien_repository_provider.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:tbcare_application/data/usecases/login.dart';

import '../pages/pages.dart';

class LoginBtnWidget extends StatelessWidget {
  const LoginBtnWidget(
      {super.key,
      required this.emailController,
      required this.passwordController,
      required this.ref,
      required this.text});

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final WidgetRef ref;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff007E23),
        ),
        onPressed: () async {
          SignInParams params = SignInParams(
              email: emailController.text.trim(),
              password: passwordController.text.trim());

          SignIn signIn = SignIn(ref.watch(firebasePasienRepositoryProvider));

          TResult<String> result = await signIn.call(params);

          result.when(
              success: (value) {
                // context.goNamed()a
                print(value);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              failed: (errorMessage) => print(errorMessage));
        },
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
