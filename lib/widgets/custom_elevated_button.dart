import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:turf_booking/theme/app_theme.dart';
import 'package:turf_booking/theme/custom_text_style.dart';
import 'package:turf_booking/widgets/custom_image_view.dart';

class CustomElevatedButton extends StatelessWidget {
  final BoxDecoration? decoration;
  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final TextStyle? buttonTextStyle;
  final bool? isDisabled;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final Alignment? alignment;
  final bool isLoading;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final double? radius;
  final bool? isBorder;

  const CustomElevatedButton(
      {super.key,
      this.decoration,
      this.leftIcon,
      this.rightIcon,
      this.margin,
      this.onPressed,
      this.alignment,
      this.buttonTextStyle,
      this.isDisabled,
      this.isLoading = false,
      this.buttonStyle,
      this.height,
      this.width,
      this.radius,
      this.isBorder,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget)
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
        height: 52.h,
        width: 150.w,
        margin: margin,
        decoration: decoration,
        child: _renderButton(),
      );

  _renderButton() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          border: Border.all(
              color: appTheme.buttonBorderColor,
              width: (isBorder == true) ? 2 : 0),
          boxShadow: [
            BoxShadow(
                color: appTheme.buttonBorderColor,
                spreadRadius: (isBorder == true) ? 2 : 0)
          ]),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(appTheme.primaryColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.all((radius != null)
                    ? Radius.circular(radius ?? 0.0)
                    : Radius.circular(16))),
          ),
        ),
        onPressed: (isDisabled ?? false)
            ? null
            : (isLoading ? null : onPressed ?? () {}),
        child: isLoading
            ? _renderLoading()
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leftIcon ?? const SizedBox.shrink(),
                  Text(text,
                      textScaler: TextScaler.linear(1.0),
                      style: buttonTextStyle ??
                          CustomTextStyles.bodyBold.copyWith(
                            fontWeight: FontWeight.w600,
                          )),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: rightIcon ??
                        CustomImageView(
                          height: 24.0,
                          width: 26.0,
                        ),
                  )
                ],
              ),
      ),
    );
  }

  _renderLoading() {
    return SizedBox(
      height: 20.h,
      width: 20.w,
      child: CircularProgressIndicator(
        strokeWidth: 3,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );
  }
}
