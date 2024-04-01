import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../screens.dart';
import '../widgets/shareds.dart';

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
        //physics: const NeverScrollableScrollPhysics(),
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


                //Image
                PictureBox(
                  images: SvgPicture.asset(contents[i].image),
                ),



                //PageIndicator
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 140, vertical: 20),
                  child: SmoothPageIndicator(
                      count: contents.length,
                      controller: _controller,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Theme.of(context).colorScheme.primary,
                          dotColor: Colors.blue.shade200,
                          dotHeight: 10,
                          dotWidth: 10)),
                ),

                //Title
                TitleApp(text: contents[i].title, fontSize: 30),
                const SizedBox(height: 20),


                //Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CupertinoButton(
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
                    ),
                    CupertinoButton.filled(
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          currentIndex == contents.length - 1
                              ? 'Get Started'
                              : 'Next',
                        ),
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
              ],
            ),
          );
        },
      ),
    );
  }
}
