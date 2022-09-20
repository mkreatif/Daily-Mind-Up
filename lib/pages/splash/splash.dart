import 'package:daily_mind_up/utils/gradient_text.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            GradientText(
              label: "Daily Mind UP",
              size: 30,
              colors: [Colors.blue, Colors.red, Colors.blue],
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
