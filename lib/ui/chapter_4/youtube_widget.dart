import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeWidget extends StatelessWidget {
  final YoutubePlayerController youtubeController;

  const YoutubeWidget({
    Key? key,
    required this.youtubeController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: youtubeController,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.blueAccent,
      topActions: <Widget>[
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
            youtubeController.metadata.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
            size: 25.0,
          ),
          onPressed: () {
            log('Settings Tapped!');
          },
        ),
      ],
    );
  }
}
