import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tbcare_application/data/providers/firebase_providers/firebase_providers.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:tbcare_application/data/usecases/use_cases_exporter.dart';
import 'package:tbcare_application/widgets/widgets.dart';

import '../data/model/models.dart';
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
          PasienLoginParams params = PasienLoginParams(
              email: emailController.text.trim(),
              password: passwordController.text.trim());

          PasienLogin login =
              PasienLogin(ref.watch(firebasePasienRepositoryProvider));

          TResult<Pasien> result = await login.call(params);

          result.when(
              success: (value) {
                ref
                    .watch(firebasePasienDataProvider.notifier)
                    .pasienState(value);
                print(value);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              failed: (errorMessage) => AlertDialogWidget(
                  title: 'Login gagal', content: errorMessage, textBtn: 'OK'));
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
