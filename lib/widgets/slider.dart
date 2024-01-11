import 'package:flutter/material.dart';
import 'package:music_app_ui/constants/appColors.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 4,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
            ),
            child: Slider(
              value: 25,
              min: 0,
              max: 100,
              onChanged: (value) {},
              activeColor: AppColors.textColorWhite,
              inactiveColor: AppColors.inactiveSlider,
              thumbColor: AppColors.textColorWhite,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '0:35',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.textColorWhite, fontSize: 10, fontWeight: FontWeight.w400),
              ),
              Text(
                '3:52',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.textColorWhite, fontSize: 10, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
