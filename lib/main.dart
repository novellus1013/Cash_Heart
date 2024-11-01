import 'package:cash_heart/features/profile/profile_screen.dart';
import 'package:cash_heart/constants/sizes.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Pretendard",
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 1,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey.shade600,
          showUnselectedLabels: true,
        ),
        primaryColor: const Color(0xffff3378),
        secondaryHeaderColor: const Color(0xff33c9ff),
        highlightColor: const Color(0xff41e94b),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size24,
            fontWeight: FontWeight.w600,
          ),
        ),
        textTheme: TextTheme(
            headlineSmall: TextStyle(
              fontSize: Sizes.size16,
              color: Colors.grey.shade500,
            ),
            bodyMedium: const TextStyle(
              fontSize: Sizes.size24,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            )),
        useMaterial3: false,
      ),
      home: const ProfileScreen(),
    );
  }
}
