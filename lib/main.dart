import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readly/constans.dart';
import 'package:readly/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const ReadlyApp());
}

class ReadlyApp extends StatelessWidget {
  const ReadlyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),

      home: const SplashView(),
    );
  }
}
