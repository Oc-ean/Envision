import 'package:envision/constants/constants.dart';
import 'package:envision/views/views.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.03, vertical: size.height * 0.04),
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RowTextTile(
                    text: '48',
                    textFont: GoogleFonts.bigShouldersDisplay(
                        fontSize: 26, color: ProjectColor.numColor),
                    subText: level.toUpperCase(),
                    subTextFont: GoogleFonts.bigShouldersDisplay(
                        fontSize: 16, color: ProjectColor.greyTextColor),
                    width: 5,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  RowTextTile(
                    text: '1,425',
                    textFont: GoogleFonts.bigShouldersDisplay(
                      fontSize: 26,
                      color: ProjectColor.numColor,
                    ),
                    subText: coinsAwarded.toUpperCase(),
                    subTextFont: GoogleFonts.bigShouldersDisplay(
                        fontSize: 16, color: ProjectColor.greyTextColor),
                    width: 5,
                    showIcon: true,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                  const Spacer(),
                  Text(
                    credits.toUpperCase(),
                    style: GoogleFonts.iceberg(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  RowTextTile(
                    text: serverTime.toUpperCase(),
                    textFont: GoogleFonts.iceland(
                      fontSize: 14,
                      color: ProjectColor.greyTextColor,
                      fontWeight: FontWeight.w400,
                    ),
                    subText: '8:42',
                    subTextFont: GoogleFonts.iceland(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    width: 5,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  RowTextTile(
                    text: localTime.toUpperCase(),
                    textFont: GoogleFonts.iceland(
                      fontSize: 14,
                      color: ProjectColor.greyTextColor,
                      fontWeight: FontWeight.w400,
                    ),
                    subText: '15:42',
                    subTextFont: GoogleFonts.iceland(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              const ProfileBox(),
              SizedBox(
                height: size.height * 0.02,
              ),
              ColumnTextTile(
                text: name.toUpperCase(),
                widget: Text(
                  luz,
                  style: GoogleFonts.bigShouldersDisplay(
                    fontSize: 18,
                    color: ProjectColor.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              ColumnTextTile(
                text: dev.toUpperCase(),
                widget: Text(
                  luz,
                  style: GoogleFonts.bigShouldersDisplay(
                    fontSize: 18,
                    color: ProjectColor.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              ColumnTextTile(
                text: ai.toUpperCase(),
                widget: Text(
                  luz,
                  style: GoogleFonts.bigShouldersDisplay(
                    fontSize: 18,
                    color: ProjectColor.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              ColumnTextTile(
                text: availability.toUpperCase(),
                widget: ButtonTile(
                  boxRadius: 1,
                  text: hire.toUpperCase(),
                  textSize: 18,
                  textColor: Colors.black,
                  alignment: MainAxisAlignment.start,
                  height: 25,
                  width: 194,
                  // icon: Stack(
                  //   alignment: Alignment.bottomRight,
                  //   children: [
                  //     Positioned(
                  //       right: 0,
                  //       child: ClipPath(
                  //         clipper: HexagonClipper(),
                  //         child: Container(
                  //           width: 15,
                  //           height: 15,
                  //           color: Colors.blue,
                  //         ),
                  //       ),
                  //     ),
                  //     ClipPath(
                  //       clipper: HexagonClipper(),
                  //       child: Container(
                  //         width: 15,
                  //         height: 15,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              ColumnTextTile(
                text: social.toUpperCase(),
                widget: ButtonTile(
                  boxRadius: 1,
                  borderColor: ProjectColor.primaryColor,
                  color: Colors.transparent,
                  text: connection.toUpperCase(),
                  textSize: 18,
                  textColor: ProjectColor.primaryColor,
                  alignment: MainAxisAlignment.spaceBetween,
                  height: 25,
                  width: 194,
                  subIcon: Image.asset(
                    bluetooth,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final width = size.width;
    final height = size.height;
    final sideLength = width / 2;
    final xDelta = sideLength * 0.866; // sin(60 degrees) * sideLength
    final yDelta = sideLength / 2;

    path.moveTo(width / 2, 0);
    path.lineTo(width, yDelta);
    path.lineTo(width, height - yDelta);
    path.lineTo(width / 2, height);
    path.lineTo(0, height - yDelta);
    path.lineTo(0, yDelta);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
