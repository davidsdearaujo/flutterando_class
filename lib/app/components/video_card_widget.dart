import 'package:flutter/material.dart';

import '../core/constants/colors.dart';

class VideoCardWidget extends StatelessWidget {
  final ImageProvider provider;
  final String title;
  final String channelName;

  const VideoCardWidget({Key? key, required this.provider, required this.title, required this.channelName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      padding: const EdgeInsets.only(left: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.cardBackground,
      ),
      child: Row(
        children: [
          Image(image: provider, width: 87, height: 66, filterQuality: FilterQuality.low),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white),
              ),
              Text(
                channelName,
                style: Theme.of(context).textTheme.headline4?.copyWith(color: AppColors.bgProgressbar),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
