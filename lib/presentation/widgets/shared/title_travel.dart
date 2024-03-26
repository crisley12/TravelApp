import 'package:flutter/material.dart';

class TitleTavel extends StatelessWidget {
  final String text;
  final TextStyle style;

  const TitleTavel(
      {super.key,
      required this.text,
      this.style = const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(10, 10, 10, 1),
      )});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}



// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:open_app/config/helpers/svg_format.dart';
// import 'package:open_app/presentation/widgets/shared/welcome_buttons.dart';
// import 'package:open_app/presentation/widgets/shared/welcome_img.dart';
// import 'package:open_app/presentation/widgets/shared/welcome_title.dart';
// //import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class ScreenTravel extends StatelessWidget {
//   const ScreenTravel({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Tamaño del contenedor
//     double containerWidth = 343;

//     final decorationBox = BoxDecoration(
//         color: Colors.white, borderRadius: BorderRadius.circular(21));

//     return Scaffold(
//       body: Center(
//           child: Container(
//         margin: const EdgeInsets.only(top: 67, left: 16, right: 16, bottom: 16),
//         child: Column(
//           children: [
//             PictureBox(
//                 decorationBox: decorationBox,
//                 images: SvgPicture.asset(
//                     SvgImages.getImagePath(imageName: SvgImages.image1))),
//             const SizedBox(height: 20),
//             SizedBox(
//               height: 20,
//               width: 80,
//               child: DotsIndicator(dotsCount: 3),
//             ),
//             const SizedBox(height: 30),
//             SizedBox(
//               height: 224,
//               width: containerWidth,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const TextWelcome(text: 'Explore The Beatiful World '),
//                   // const TextWelcome(text: 'The Beatiful'),
//                   // const TextWelcome(text: 'World'),
//                   // const SizedBox(height: 30),
//                   Padding(
//                     padding:
//                         const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//                     child: SizedBox(
//                       width: containerWidth,
//                       height: 48,
//                       child: Row(
//                         children: [
//                           Button(
//                             child: const Text('Skip'),
//                             onPressed: () {},
//                           ),
//                           ButtonWelcome(
//                             child: const Text('Next'),
//                             onPressed: () {},
//                           )
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }

