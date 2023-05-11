import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_training/commons/app_colors.dart';
import 'package:flutter_training/commons/app_vectors.dart';
import 'package:flutter_training/models/enums/image_type.dart';

class ImageCardWidget extends StatelessWidget {
  final String icon;
  final String title;
  final ImageType imageType;

  const ImageCardWidget({
    Key? key,
    required this.icon,
    required this.title,
    this.imageType = ImageType.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: AppColors.textBoxBg,
        border: Border.all(
          color: AppColors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          imageType == ImageType.image
              ? Image.asset(icon)
              : SvgPicture.asset(icon),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              title,
              style: const TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
