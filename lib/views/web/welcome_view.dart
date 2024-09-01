import 'package:envision/constants/constants.dart';
import 'package:envision/views/web/web.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize(context);
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.83, 0.89, 1.0], // 80% black, 20% transition to red
            colors: [
              Colors.black,
              Colors.black,
              Color(0xff3a1315),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              hi,
              style: GoogleFonts.bigShouldersDisplay(
                  fontSize: size.height * 0.7,
                  fontWeight: FontWeight.bold,
                  color: ProjectColor.primaryColor),
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  welcomeText.toUpperCase(),
                  style: GoogleFonts.iceland(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  introText.toUpperCase(),
                  style: GoogleFonts.iceland(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                ButtonTile(
                  height: 50,
                  width: 230,
                  boxRadius: 1,
                  borderColor: ProjectColor.primaryColor,
                  color: Colors.transparent,
                  text: enterTheSystem.toUpperCase(),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeView()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
