import 'package:flutter/material.dart';
import 'package:furniture_app/features/home/presentation/views/home_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        // primaryColor: kPrimaryColor,
         //accentColor: kPrimaryColor,
        appBarTheme:const AppBarTheme(
          backgroundColor: kPrimaryColor,
          elevation: 0.0
        )

      ),
      home: const HomeView(),
    );
  }
}


