import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tbcare_application/pages/pages.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
          path: '/login',
          name: 'login',
          builder: (context, state) => const LoginPage(),
          routes: [
            GoRoute(
                path: 'register',
                name: 'register',
                builder: (context, state) => const RegisterPage()),
          ]),
      GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(
              path: 'kontrol',
              name: 'kontrol',
              builder: (context, state) => KontrolPage(),
            ),
            GoRoute(
              path: 'medic',
              name: 'medic',
              builder: (context, state) => const MedicPage(),
            ),
            GoRoute(
              path: 'konsultasi',
              name: 'konsultasi',
              builder: (context, state) => const KonsultasiPage(),
            ),
            GoRoute(
              path: 'kesehatan',
              name: 'kesehatan',
              builder: (context, state) => const KesehatanPage(),
            ),
            GoRoute(
              path: 'profile',
              name: 'profile',
              builder: (context, state) => const ProfilePage(),
            ),
            GoRoute(
              path: 'setting',
              name: 'setting',
              builder: (context, state) => const SettingPage(),
            ),
          ]),
    ],
    initialLocation: '/login',
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
