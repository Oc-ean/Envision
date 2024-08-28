import 'package:envision/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonTile extends StatelessWidget {
  final String? text;
  final Color? textColor;

  final double boxRadius;
  final double? height;
  final double? width;
  final Widget? icon;
  final Color? color;
  final Color? borderColor;
  final bool? loading;
  final FontWeight? fontWeight;
  final double? textSize;
  final VoidCallback? onTap;
  final MainAxisAlignment? alignment;

  const ButtonTile({
    super.key,
    this.text,
    required this.boxRadius,
    this.width,
    this.icon,
    this.textColor,
    this.color,
    this.onTap,
    this.height,
    this.loading,
    this.borderColor,
    this.fontWeight,
    this.textSize,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 48,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(boxRadius),
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          color: color ?? ProjectColor.primaryColor,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: alignment ?? MainAxisAlignment.center,
            children: [
              SizedBox(
                width: icon != null && text != null ? 0 : 0,
              ),
              if (icon != null) ...[
                icon!,
                SizedBox(width: text != null ? 10 : 0),
              ],
              if (text != null) ...[
                Text(
                  text!,
                  style: GoogleFonts.bigShouldersDisplay(
                    fontSize: textSize ?? 20,
                    fontWeight: fontWeight ?? FontWeight.w600,
                    color: textColor ?? ProjectColor.primaryColor,
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
