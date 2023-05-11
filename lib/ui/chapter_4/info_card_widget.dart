import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/commons/app_colors.dart';
import 'package:flutter_training/configs/app_configs.dart';

class InfoCardWidget extends StatelessWidget {
  final bool isUseCache;

  const InfoCardWidget({
    Key? key,
    this.isUseCache = false,
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
          SizedBox(
            height: 44,
            width: 44,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: isUseCache
                  ? CachedNetworkImage(
                      imageUrl: AppConfigs.imgLogoFlutter,
                      fit: BoxFit.cover,
                    )
                  : Image.network(
                      AppConfigs.imgLogoFlutter,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "@airplanes45",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Sarah Paul",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}