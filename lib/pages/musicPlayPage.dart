import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app_ui/constants/appColors.dart';
import 'package:music_app_ui/widgets/albumArt.dart';
import 'package:music_app_ui/widgets/playButtons.dart';
import 'package:music_app_ui/widgets/playnextCard.dart';

import '../widgets/nameStar.dart';
import '../widgets/slider.dart';

class MusicPlayPage extends StatefulWidget {
  const MusicPlayPage({super.key});

  @override
  State<MusicPlayPage> createState() => _MusicPlayPageState();
}

class _MusicPlayPageState extends State<MusicPlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.deepGreen,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.deepGreen,
          leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: SvgPicture.asset('asset/arrow-left.svg',
                  height: 20,
                  width: 20,
                  colorFilter: const ColorFilter.mode(
                    AppColors.textColorWhite,
                    BlendMode.srcIn,
                  ))),
          title: Text(
            'Following Jesus',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.textColorWhite, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 18),
              child: Icon(
                Icons.more_horiz_outlined,
                color: AppColors.textColorWhite,
              ),
            ),
          ],
        ),
        body: const SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlayNextCard(),
              AlbumArt(),
              NameAndStar(),
              SliderWidget(),
              PlayButtons(),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
            decoration: const BoxDecoration(
              color: AppColors.lightGreen,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'LYRICS',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.textColorWhite, fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Container(
                  width: 55,
                  child: Row(
                    children: [
                      Text(
                        'SWIPE',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: AppColors.textColorWhite,
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      SvgPicture.asset('asset/up.svg',
                          height: 10,
                          width: 10,
                          colorFilter: const ColorFilter.mode(
                            AppColors.textColorWhite,
                            BlendMode.srcIn,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
