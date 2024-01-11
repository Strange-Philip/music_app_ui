import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/appColors.dart';

class NameAndStar extends StatelessWidget {
  const NameAndStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Following Jesus',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: AppColors.textColorWhite, fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 6),
            Text(
              'Edem Evangelist',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: AppColors.textColorWhite, fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SvgPicture.asset("asset/star.svg",
            height: 24,
            width: 24,
            colorFilter: const ColorFilter.mode(
              AppColors.textColorWhite,
              BlendMode.srcIn,
            )),
      ],
    );
  }
}
