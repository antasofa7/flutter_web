import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

int selectedItem = 0;

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    Widget navItem(String title, int index) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedItem = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0xff1D1E3C),
                    fontWeight: selectedItem == index
                        ? FontWeight.w500
                        : FontWeight.w300)),
            Container(
                width: 66,
                height: 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: selectedItem == index
                        ? Color(0xffFE998D)
                        : Colors.transparent))
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 30.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          'logo.png',
          width: 72.0,
          height: 40.0,
        ),
        Row(
          children: [
            navItem('Guides', 0),
            const SizedBox(
              width: 50.0,
            ),
            navItem('Pricing', 1),
            const SizedBox(
              width: 50.0,
            ),
            navItem('Team', 2),
            const SizedBox(
              width: 50.0,
            ),
            navItem('Stories', 3),
          ],
        ),
        Image.asset(
          'btn.png',
          width: 163.0,
          height: 53.0,
        ),
      ]),
    );
  }
}
