import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:turf_booking/presentation/login_screen/controller/login_controller.dart';
import 'package:turf_booking/theme/app_theme.dart';
import 'package:turf_booking/theme/custom_text_style.dart';
import 'package:turf_booking/widgets/custom_image_view.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        toolbarHeight: 54.0,
        leadingWidth: 60.0,
        leading: CustomImageView(
          imagePath: 'assets/images/back_ic.png',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 16.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Let’s Connect With Us!",
                      style: CustomTextStyles.titleExtraBold,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              _buildTextField("Email", Icons.email_outlined),
              SizedBox(height: 16.0),
              _buildTextField("Password", Icons.lock_outline),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        debugPrint("Forgot Password?");
                      },
                      child: Text(
                        "Forgot Password?",
                        style: CustomTextStyles.bodyBold.copyWith(
                          color: appTheme.secondoryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  controller.NavigateToHomeScreen();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: appTheme.secondoryColor,
                  foregroundColor: Colors.white,
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  minimumSize: Size(200, 38),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Sign In',
                    style: CustomTextStyles.bodyButtonBold.copyWith(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.grey.shade300,
                    height: 2.0,
                    width: 100.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Or",
                    style: CustomTextStyles.bodyBold.copyWith(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    height: 2.0,
                    width: 100.0,
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              googleButton(),
            ],
          ),
          CustomImageView(
            imagePath: 'assets/images/cricket_player_1.png',
            height: 250,
            width: 250,
          ),
        ],
      ),
    );
  }

  Widget googleButton() {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.grey.shade300),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: Size(350, 50),
        backgroundColor: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/google_ic.png',
            width: 20,
            height: 20,
          ),
          SizedBox(width: 12),
          Text(
            'Continue with Google',
            style: CustomTextStyles.bodyBold.copyWith(
              fontSize: 14.0,
              color: appTheme.black,
            ),
          ),
        ],
      ),
    );
  }

  _buildTextField(String hintText, IconData prefixIcon) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: CustomTextStyles.bodyBold.copyWith(
              color: Colors.grey.shade400,
            ),
            prefixIcon: Icon(
              prefixIcon,
              color: appTheme.secondoryColor,
            ),
            filled: true,
            fillColor: Color.fromARGB(255, 247, 247, 249),
            contentPadding:
                EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: Colors.grey.shade300,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: Colors.grey.shade300,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
                width: 1.2,
              ),
            ),
          ),
          style: TextStyle(
            color: Colors.black,
          ),
        ));
  }
}
