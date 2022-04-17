import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'bg.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              const Navigation(),
              Padding(
                padding: const EdgeInsets.only(top: 90.0, bottom: 84.0),
                child: Image.asset('illustration.png', width: 550),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'Icon_down_solid.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Text(
                    'Scroll to learn more',
                    style:
                        GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
