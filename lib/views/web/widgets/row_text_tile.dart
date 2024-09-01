import 'package:envision/constants/constants.dart';
import 'package:flutter/material.dart';


class RowTextTile extends StatelessWidget {
  final String text;
  final String subText;
  final double width;

  final bool showIcon;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextBaseline? textBaseline;
  final TextStyle textFont;
  final TextStyle subTextFont;
  const RowTextTile({
    super.key,
    required this.text,
    required this.subText,
    required this.width,
    this.showIcon = false,
    this.crossAxisAlignment,
    this.textBaseline,
    required this.textFont,
    required this.subTextFont,
  });

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize(context);
    return Row(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      textBaseline: textBaseline,
      children: [
        if (showIcon) ...[
          const ButtonTile(
            height: 33,
            width: 33,
            boxRadius: 1,
            color: Colors.transparent,
            borderColor: ProjectColor.greyTextColor,
            icon: Icon(
              Icons.add,
              color: ProjectColor.primaryColor,
            ),
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
        ],
        Text(
          text,
          style: textFont,
          // style: GoogleFonts.bigShouldersDisplay(
          //   fontSize: textSize,
          //   color: textColor,
          // ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          subText,
          style: subTextFont,
          //   style: GoogleFonts.bigShouldersDisplay(
          //     fontSize: subTextSize,
          //     color: subTextColor,
          //   ),
          // )
        ),
      ],
    );
  }
}
