import 'package:flutter/material.dart';

import '../core/constants/colors.dart';

class TrailWidget extends StatelessWidget {
  final String title;
  const TrailWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 197,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.fromLTRB(14, 18, 21, 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFF0F1116),
      ),
      child: Column(children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/img/icons/trails.png",
              width: 10,
              filterQuality: FilterQuality.low,
            ),
            SizedBox(width: 6),
            Expanded(child: Text(title, style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white))),
            Text("Assistir", style: Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white)),
            Icon(Icons.keyboard_arrow_right_rounded, color: AppColors.accent, size: 18),
          ],
        ),
        SizedBox(height: 7),
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Text(
            "Mussum Ipsum, cacilds vidis litro abertis. Nullam volutpat...",
            style: Theme.of(context).textTheme.headline1?.copyWith(color: AppColors.subtitle),
          ),
        ),
      ]),
    );
  }
}
