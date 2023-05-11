import 'package:flutter/material.dart';
import 'package:flutter_training/commons/app_colors.dart';
import 'package:flutter_training/commons/app_images.dart';
import 'package:flutter_training/commons/app_vectors.dart';
import 'package:flutter_training/configs/app_configs.dart';
import 'package:flutter_training/models/enums/image_type.dart';
import 'package:flutter_training/ui/chapter_4/image_card_widget.dart';
import 'package:flutter_training/ui/chapter_4/info_card_widget.dart';
import 'package:flutter_training/ui/chapter_4/video_player_widget.dart';
import 'package:flutter_training/ui/chapter_4/youtube_widget.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExerciseImageScreen extends StatefulWidget {
  const ExerciseImageScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseImageScreen> createState() => _ExerciseImageScreenState();
}

class _ExerciseImageScreenState extends State<ExerciseImageScreen> {
  late YoutubePlayerController _youtubeController;
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _youtubeController = YoutubePlayerController(
      initialVideoId: AppConfigs.youtubeLink,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );

    _videoPlayerController = VideoPlayerController.asset(
      AppConfigs.videoLink,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Chapter 4",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildImageType,
              const SizedBox(height: 20),
              _buildVectorType,
              const SizedBox(height: 20),
              _buildInfoCard(),
              const SizedBox(height: 20),
              _buildInfoCard(
                isUseCache: true,
              ),
              const SizedBox(height: 20),
              _buildVideo,
            ],
          ),
        ),
      ),
    );
  }

  Widget get _buildImageType {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text(
          "UI used image",
          style: TextStyle(
            fontSize: 20,
            color: Colors.orange,
          ),
        ),
        ImageCardWidget(
          title: "FAQ",
          icon: AppImages.imgFAQ,
        ),
        ImageCardWidget(
          title: "Contact Us",
          icon: AppImages.imgContact,
        ),
        ImageCardWidget(
          title: "Terms & Conditions",
          icon: AppImages.imgTerms,
        ),
      ],
    );
  }

  Widget get _buildVectorType {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text(
          "UI used vector",
          style: TextStyle(
            fontSize: 20,
            color: Colors.orange,
          ),
        ),
        ImageCardWidget(
          title: "FAQ",
          icon: AppVectors.icFAQ,
          imageType: ImageType.vector,
        ),
        ImageCardWidget(
          title: "Contact Us",
          icon: AppVectors.icContact,
          imageType: ImageType.vector,
        ),
        ImageCardWidget(
          title: "Terms & Conditions",
          icon: AppVectors.icTerms,
          imageType: ImageType.vector,
        ),
      ],
    );
  }

  Widget _buildInfoCard({
    bool isUseCache = false,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          isUseCache
              ? "Avatar used CacheNetworkImage"
              : "Avatar used Network.image",
          style: const TextStyle(
            fontSize: 20,
            color: Colors.orange,
          ),
        ),
        isUseCache
            ? const InfoCardWidget(
                isUseCache: true,
              )
            : const InfoCardWidget(),
      ],
    );
  }

  Widget get _buildVideo {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 400,
          width: MediaQuery.of(context).size.width - 20,
          child: VideoPlayerWidget(
            videoPlayerController: _videoPlayerController,
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 400,
          width: MediaQuery.of(context).size.width - 20,
          child: YoutubeWidget(
            youtubeController: _youtubeController,
          ),
        ),
      ],
    );
  }
}
