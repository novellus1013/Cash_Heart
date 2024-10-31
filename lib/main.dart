import 'package:cash_heart/features/auth/intro_screen.dart';
import 'package:cash_heart/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cash Heart',
      theme: ThemeData(
        fontFamily: "Pretendard",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffff3378),
        ).copyWith(
          secondary: const Color(0xff33c9ff),
          tertiary: const Color(0xff41e94b),
        ),
        useMaterial3: false,
      ),
      home: const IntroScreen(),
    );
  }
}
