import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turf_booking/presentation/onboarding/controller/onboarding_controller.dart';
import 'package:turf_booking/theme/app_theme.dart';
import 'package:turf_booking/theme/custom_text_style.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller.pageController,
            itemCount: controller.images.length,
            onPageChanged: controller.onPageChanged,
            itemBuilder: (context, index) {
              return Container(
                color: controller.backgroundColors[index],
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      controller.images[index],
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 40),
                    Text(
                      controller.titles[index],
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyBold.copyWith(
                        fontSize: 24.0,
                        color: appTheme.black,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      controller.subtitles[index],
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyBold.copyWith(
                        fontSize: 14.0,
                        color: appTheme.black,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            top: 40,
            right: 20,
            child: Obx(
              () => Visibility(
                visible: controller.currentPage.value != 2,
                child: TextButton(
                  onPressed: controller.skipToLastPage,
                  child: Text(
                    'Skip',
                    style: CustomTextStyles.bodyBold.copyWith(
                      color: appTheme.secondoryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 24,
            right: 24,
            child: Obx(
              () => ElevatedButton(
                onPressed: controller.nextPage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: appTheme.secondoryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  controller.currentPage.value == 2 ? 'Get Started' : 'Next',
                  style: CustomTextStyles.bodyButtonBold.copyWith(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
