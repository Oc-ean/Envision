import 'package:envision/views/mobile/welcome_mobile_view.dart';
import 'package:envision/views/views.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return const WelcomeView();
          } else {
            return const WelcomeMobileView();
          }
        },
      ),
    );
  }
}
