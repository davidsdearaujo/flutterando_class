import 'package:flutter/material.dart';

import '../core/constants/colors.dart';

class PlaylistWidget extends StatelessWidget {
  final String title;
  final String channelName;

  const PlaylistWidget({
    Key? key,
    required this.title,
    required this.channelName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xFFC4C4C4).withOpacity(.1),
      ),
      child: Column(
        children: [
          Container(
            width: 154,
            height: 84,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color(0xFFC4C4C4).withOpacity(.1),
            ),
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white),
          ),
          Text(
            channelName,
            style: Theme.of(context).textTheme.headline5?.copyWith(color: AppColors.subtitle),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
