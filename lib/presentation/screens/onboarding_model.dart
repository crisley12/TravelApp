import 'package:open_app/presentation/utils/svg_format.dart';

class OnboardingModel {
  String image;
  String title;

  OnboardingModel({required this.image, required this.title});
}

List<OnboardingModel> contents = [
  OnboardingModel(
      image: SvgImages.getImagePath(imageName: SvgImages.image1),
      title: 'Explore\nThe Beautiful\nWorld!'),
  OnboardingModel(
      image: SvgImages.getImagePath(imageName: SvgImages.image2),
      title: 'Find\nYour Perfect\nTickets To Fly'),
  OnboardingModel(
      image: SvgImages.getImagePath(imageName: SvgImages.image3),
      title: 'Book\nAppointment\nin Easiest Way!'),
];
