import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColumnTextTile extends StatelessWidget {
  final String text;
  final Widget widget;
  const ColumnTextTile({super.key, required this.text, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.iceland(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        // SizedBox(
        //   height: 5,
        // ),
        widget,
      ],
    );
  }
}
