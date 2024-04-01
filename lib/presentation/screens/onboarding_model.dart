import 'package:open_app/config/constants/svg_format.dart';

class OnboardingModel {
  String image;
  String title;

  OnboardingModel({required this.image, required this.title});
}

List<OnboardingModel> contents = [
  OnboardingModel(
      image: SvgImages.girlVector, title: 'Explore\nThe Beautiful\nWorld!'),
  OnboardingModel(
      image: SvgImages.maskVector, title: 'Find\nYour Perfect\nTickets To Fly'),
  OnboardingModel(
      image: SvgImages.maskVector, title: 'Book\nAppointment\nin Easiest Way!'),
];
