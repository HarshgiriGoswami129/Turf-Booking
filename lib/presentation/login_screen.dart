import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:turf_booking/presentation/controller/login_controller.dart';
import 'package:turf_booking/theme/app_theme.dart';
import 'package:turf_booking/theme/custom_text_style.dart';
import 'package:turf_booking/widgets/custom_elevated_button.dart';
import 'package:turf_booking/widgets/custom_image_view.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.primaryColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let’s Connect With Us!",
                      style: CustomTextStyles.titleExtraBold,
                    )
                  ],
                ),
                SizedBox(height: 40),
                _buildTextField("Email"),
                _buildTextField("Password"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: appTheme.white,
                    shadowColor: appTheme.secondoryColor,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  child: Text(
                    'Custom Button',
                    style: CustomTextStyles.bodyButtonBold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 1.5,
                      color: appTheme.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Or",
                      style: CustomTextStyles.bodyBold,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 1.5,
                      color: appTheme.white,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      backgroundColor: appTheme.white,
                      shadowColor: appTheme.secondoryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in with Google',
                          style: CustomTextStyles.bodyButtonBold,
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/google_ic.png',
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 76.0),
                  child: CustomImageView(
                    imagePath: 'assets/images/cricket_player.png',
                    height: 200,
                    width: 200,
                    color: appTheme.primaryBorderColor,
                  ),
                ),
                // CustomImageView(
                //   imagePath: 'assets/images/stump.png',
                //   height: 100,
                //   width: 80,
                //   color: appTheme.primaryBorderColor,
                // ),
                // CustomImageView(
                //   imagePath: 'assets/images/stump.png',
                //   height: 100,
                //   width: 80,
                //   color: appTheme.primaryBorderColor,
                // ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 42.0),
              child: Container(
                width: double.infinity,
                height: 18.5,
                color: appTheme.white,
                child: Center(
                  child: Text(
                    "Let's Play Together",
                    style: CustomTextStyles.bodyBold.copyWith(
                      color: appTheme.primaryColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildTextField(String hintText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: CustomTextStyles.bodyBold,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: appTheme.white,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: appTheme.white,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
