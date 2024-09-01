import 'package:envision/constants/constants.dart';
import 'package:flutter/material.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            // color: Colors.red,
            border:
                Border.all(color: ProjectColor.greyTextColor.withOpacity(0.5)),
          ),
          // Main container background color
          child: Image.asset(
            mi,
            height: 148,
            width: 168,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            angleIcon,
            height: 10,
            width: 10,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Transform.rotate(
            angle: 3.14159 / 2,
            child: Image.asset(
              angleIcon,
              height: 10,
              width: 10,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Transform.rotate(
            angle: -3.14159 / 2,
            child: Image.asset(
              angleIcon,
              height: 10,
              width: 10,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Transform.rotate(
            angle: 3.14159,
            child: Image.asset(
              angleIcon,
              height: 10,
              width: 10,
            ),
          ),
        ),
      ],
    );
  }
}
