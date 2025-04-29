// ignore_for_file: use_key_in_widget_constructors
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (endsWith('.svg')) {
      return ImageType.svg;
    } else if (startsWith('file://')) {
      return ImageType.file;
    } else if (startsWith('/')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, file, unknown }

// ignore: must_be_immutable
class CustomImageView extends StatelessWidget {
  CustomImageView(
      {this.imagePath,
      this.height,
      this.width,
      this.color,
      this.fit,
      this.alignment,
      this.onTap,
      this.radius,
      this.margin,
      this.border,
      this.placeHolder = 'assets/images/image_not_found.png'});

  String? imagePath;
  double? height;
  double? width;
  Color? color;
  BoxFit? fit;
  final String placeHolder;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  BorderRadius? radius;
  BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment!, child: _buildWidget())
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: _buildCircleImage(),
      ),
    );
  }

  _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: _buildImageWithBorder(),
      );
    } else {
      return _buildImageWithBorder();
    }
  }

  _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    if (imagePath != null) {
      switch (imagePath!.imageType) {
        case ImageType.svg:
          return
              // Container(
              //     height: height,
              //     width: width,
              //     child: Container(
              //       height: 100,
              //       width: 100,
              //       color: Colors.red,
              //     )
              SvgPicture.asset(
            imagePath!,
            height: height,
            width: width,
            fit: fit ?? BoxFit.contain,
            // colorFilter: this.color != null
            //     ? ColorFilter.mode(
            //         this.color ?? Colors.transparent, BlendMode.srcIn)
            //     : null,
          );
        // );
        case ImageType.file:
          return Image.file(
            File(imagePath!),
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
        case ImageType.png:
        default:
          return Image.asset(
            imagePath!,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
      }
    }
    return SizedBox();
  }
}
