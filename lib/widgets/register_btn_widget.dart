import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/providers/firebase_providers/firebase_providers.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:tbcare_application/data/usecases/use_cases_exporter.dart';
import 'package:tbcare_application/pages/pages.dart';
import 'package:tbcare_application/widgets/widgets.dart';

class RegisterBtnWidget extends ConsumerWidget {
  const RegisterBtnWidget({
    super.key,
    required TextEditingController nikController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController confirmPasswordController,
    required TextEditingController namaController,
  })  : _nikController = nikController,
        _emailController = emailController,
        _passwordController = passwordController,
        _confirmPasswordController = confirmPasswordController,
        _namaController = namaController;

  final TextEditingController _nikController;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final TextEditingController _confirmPasswordController;
  final TextEditingController _namaController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff007E23),
          minimumSize: const Size(300, 35)),
      onPressed: () async {
        // Proses registrasi
        String nama = _namaController.text;
        String nik = _nikController.text;
        String email = _emailController.text;
        String password = _passwordController.text;
        String confirmPassword = _confirmPasswordController.text;

        // Contoh validasi sederhana
        if (nik.isNotEmpty &&
            email.isNotEmpty &&
            password.isNotEmpty &&
            password == confirmPassword &&
            nama.isNotEmpty) {
          PasienRegisterParams params = PasienRegisterParams(
            nama: nama,
            nik: nik,
            email: email,
            password: password,
          );

          PasienRegister register =
              PasienRegister(ref.watch(firebasePasienRepositoryProvider));

          TResult<Pasien> result = await register.call(params);

          result.when(
              success: (data) {
                ref
                    .watch(firebasePasienDataProvider.notifier)
                    .pasienState(data);
                // Registrasi berhasil
                showDialog(
                  context: context,
                  builder: (context) {
                    return const AlertDialogWidget(
                      title: 'Registrasi Berhasil',
                      content: 'Akun Anda telah berhasil didaftarkan.',
                      textBtn: 'OK',
                    );
                  },
                );
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              failed: (message) => showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialogWidget(
                        title: 'Registrasi Gagal',
                        content: message,
                        textBtn: 'OK',
                      );
                    },
                  ));
        } else {
          // Registrasi gagal
          showDialog(
            context: context,
            builder: (context) {
              return const AlertDialogWidget(
                title: 'Registrasi Gagal',
                content: 'Mohon lengkapi semua informasi dengan benar.',
                textBtn: 'OK',
              );
            },
          );
        }
      },
      child: const Text('Daftar'),
    );
  }
}
