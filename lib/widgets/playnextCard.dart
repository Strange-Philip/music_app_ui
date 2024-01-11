import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/appColors.dart';

class PlayNextCard extends StatefulWidget {
  const PlayNextCard({super.key});

  @override
  State<PlayNextCard> createState() => _PlayNextCardState();
}

class _PlayNextCardState extends State<PlayNextCard> {
  bool changeGradient = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          changeGradient = !changeGradient;
        });
      },
      child: Container(
        width: double.infinity,
        height: 71,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          gradient: changeGradient
              ? const LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF004D42), Color(0xBF00201C)],
                )
              : const LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFFDCFFFA), Color(0xBFB5FCF2)],
                ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Playing next',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: changeGradient ? AppColors.textColorWhite : AppColors.textColorBlack,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Far Away(feat. Vessel Chordrick) - Single',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: changeGradient ? AppColors.textColorWhite : AppColors.textColorBlack,
                        fontSize: 13,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SvgPicture.asset("asset/play.svg",
                height: 24,
                width: 24,
                colorFilter: ColorFilter.mode(
                  changeGradient ? AppColors.textColorWhite : AppColors.textColorBlack,
                  BlendMode.srcIn,
                ))
          ],
        ),
      ),
    );
  }
}
