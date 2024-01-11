import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app_ui/constants/appColors.dart';

class PlayButtons extends StatefulWidget {
  const PlayButtons({super.key});

  @override
  State<PlayButtons> createState() => _PlayButtonsState();
}

class _PlayButtonsState extends State<PlayButtons> {
  bool play = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'asset/shuffle.svg',
            height: 24,
            width: 24,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            'asset/skip-back.svg',
            height: 36,
            width: 36,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                play = !play;
              });
            },
            child: CircleAvatar(
                radius: 28,
                backgroundColor: AppColors.textColorWhite,
                child: SvgPicture.asset(
                  play ? "asset/pause.svg" : 'asset/play.svg',
                  height: 24,
                  width: 24,
                  colorFilter: const ColorFilter.mode(
                    AppColors.black,
                    BlendMode.srcIn,
                  ),
                )),
          ),
          SvgPicture.asset(
            'asset/skip-forward.svg',
            height: 36,
            width: 36,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            'asset/repeat.svg',
            height: 24,
            width: 24,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
