// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:turf_booking/theme/app_theme.dart';
import 'package:turf_booking/theme/custom_text_style.dart';
import 'package:turf_booking/widgets/custom_image_view.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {this.lblTitle,
      this.backgroundColor,
      this.actions,
      this.isTitle,
      this.onTap});
  final String? lblTitle;
  final Color? backgroundColor;
  final List<Widget>? actions;
  bool? isTitle = false;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 54.0,
      leadingWidth: 64.0,
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 48.0,
            width: 48.0,
            decoration: BoxDecoration(
                color: appTheme.black,
                border: Border.all(color: appTheme.black, width: 1.2),
                borderRadius: BorderRadius.circular(18)),
            child: CustomImageView(
              margin: EdgeInsets.all(16),
              imagePath: 'assets/images/back_ic.png',
              height: 24.0,
              width: 24.0,
            ),
          ),
        ),
      ),
      title: isTitle ?? false
          ? Text(
              isTitle ?? false ? lblTitle! : "",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleExtraBold.copyWith(
                fontSize: 20.0,
              ),
            )
          : SizedBox(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
