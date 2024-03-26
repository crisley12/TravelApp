import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_app/presentation/screens/login.dart';
import 'package:open_app/presentation/screens/onboarding_model.dart';
import 'package:open_app/presentation/widgets/shared/button_filled_.dart';
import 'package:open_app/presentation/widgets/shared/button_none.dart';
import 'package:open_app/presentation/widgets/shared/picture_box.dart';
import 'package:open_app/presentation/widgets/shared/title_travel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnborardingScreen extends StatefulWidget {
  const OnborardingScreen({super.key});

  @override
  State<OnborardingScreen> createState() => _OnborardingScreenState();
}

class _OnborardingScreenState extends State<OnborardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return Container(
            margin:
                const EdgeInsets.only(top: 67, left: 20, right: 16, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PictureBox(
                  images: SvgPicture.asset(contents[i].image),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 140, right: 140, top: 0, bottom: 25),
                  child: Center(
                    child: SmoothPageIndicator(
                        count: contents.length,
                        controller: _controller,
                        effect: ExpandingDotsEffect(
                            activeDotColor:
                                Theme.of(context).colorScheme.primary,
                            dotColor: Colors.blue.shade200,
                            dotHeight: 10,
                            dotWidth: 10)),
                  ),
                ),
                TitleTavel(text: contents[i].title),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 0),
                  child: SizedBox(
                    width: 343,
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonNone(
                          child: const Text('Skip'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const Login(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(width: 10), // Espacio entre botones
                        ButtonFilled(
                            child: Text(currentIndex == contents.length - 1
                                ? 'Get Started'
                                : 'Next'),
                            onPressed: () {
                              if (currentIndex == contents.length - 1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const Login(),
                                  ),
                                );
                              }
                              _controller.nextPage(
                                  duration: const Duration(microseconds: 100),
                                  curve: Curves.bounceIn);
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
