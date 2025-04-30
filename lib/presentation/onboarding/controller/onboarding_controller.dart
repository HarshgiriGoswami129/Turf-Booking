import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turf_booking/routes/app_routes.dart';

class OnboardingController extends GetxController {
  final pageController = PageController();
  var currentPage = 0.obs;

  final List<String> images = [
    'assets/images/onboarding_img_1.png',
    'assets/images/onboarding_img_2.png',
    'assets/images/onboarding_img_3.png',
  ];

  final List<String> titles = [
    "Welcome to the game that never stops.",
    "Book your turf in just a few taps.",
    "Play more. Connect deeper. Win together.",
  ];

  final List<String> subtitles = [
    "Discover turf near you and take control of your playtime.",
    "Fast, flexible, and hassle-free reservations—anytime, anywhere.",
    "Join the community. Live the sport.",
  ];

  final List<Color> backgroundColors = [
    Color(0xFFEFF6FF),
    Color(0xFFFFF3E0),
    Color(0xFFF3E5F5),
  ];

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void skipToLastPage() {
    pageController.animateToPage(
      2,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void nextPage() {
    if (currentPage.value < 2) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offNamed(AppRoutes.loginScreen);
    }
  }
}
