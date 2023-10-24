import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/views/widgets/btn_primary.dart';
import 'package:todo_app/views/widgets/spacing.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacing(space: 120),
              Text(
                'Welcome !',
                style: TextStyle(
                  // color: Colors.black,
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Opacity(
                opacity: .5,
                child: Text(
                  'Effortlessly Manage Your Tasks',
                  style: TextStyle(
                    // color: c,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Center(
                  child: Image(
                      image: AssetImage('assets/images/splash_screen_img.jpg'),
                      height: 400)),
              SizedBox(
                width: double.infinity,
                child: PrimaryBtn(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'home');
                    },
                    text: 'Get Started'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
