import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtf_project/Page/HomePage.dart';
import 'package:mtf_project/Page/MenuPage.dart';
import 'package:mtf_project/Page/shared_pref.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      var token = SharedPref.pref?.getString("token");

      if (token == null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MenuPage(),
          ),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff172b4d),
      body: Center(
        child: Text("My Movie",
            style: GoogleFonts.montserrat(
                color: const Color.fromARGB(255, 230, 230, 230),
                fontWeight: FontWeight.w600,
                fontSize: 32)),
      ),
    );
  }
}
