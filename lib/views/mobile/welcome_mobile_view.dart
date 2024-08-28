import 'package:envision/constants/constants.dart';
import 'package:flutter/material.dart';

class WelcomeMobileView extends StatelessWidget {
  const WelcomeMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(welcomeText),
      ),
    );
  }
}
