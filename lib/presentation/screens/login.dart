import 'package:flutter/material.dart';
import 'package:open_app/config/constants/svg_format.dart';
import '../widgets/shareds.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
      )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleApp(text: 'Sign In', fontSize: 30),
              const SizedBox(height: 20),
              const Subtitle(
                  text: 'Start Your Journey with affordable price',
                  fontSize: 16),

              //Email

              const Padding(
                padding:
                    EdgeInsets.only(top: 25, right: 5, left: 5, bottom: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter Your Email'),
                ),
              ),

              //Password

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Your Password'),
                ),
              ),

              // Buttons

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Button(
                    text: 'Sign in',
                    colorButton: const Color.fromRGBO(0, 100, 2010, 1),
                    colorText: Colors.white,
                    onPressed: () {},
                    iconApp: Icons.check_circle_rounded,
                  ),
                  Button(
                    text: 'Or Sing In With',
                    colorButton: Colors.white,
                    colorText: Colors.grey,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  // Logos
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareLogos(imagePath: SvgImages.face),
                      SizedBox(width: 15),
                      SquareLogos(imagePath: SvgImages.google),
                      SizedBox(width: 15),
                      SquareLogos(imagePath: SvgImages.apple),
                    ],
                  ),

                  // Text Signup
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Subtitle(
                          text: 'Don’t Have an Account?', fontSize: 14),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Sign up',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 100, 2010, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
