import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app_ui/constants/appColors.dart';
import 'package:music_app_ui/widgets/slider.dart';

class LyricsPage extends StatelessWidget {
  const LyricsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onVerticalDragDown: (details) {
                  details.globalPosition.dy > 300 ? Navigator.pop(context) : Navigator.pop(context);
                },
                child: Opacity(
                  opacity: 0.4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 48,
                      height: 8,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 210,
              clipBehavior: Clip.antiAlias,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                )),
                image: DecorationImage(
                  image: AssetImage('asset/musician.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'I still believe in Jesus',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.textColorWhite, fontSize: 60, fontWeight: FontWeight.w700),
                  maxLines: 2,
                  textAlign: TextAlign.start,
                )),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.3),
                  ],
                  stops: const [0.5, 0.7, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds);
              },
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  child: Text(
                    """I no go stagger, I'm Abraham
Cos I know the promises of God are yes and in Him Amen \n\nMe ano dey fear
No matter what I still go follow
I know what He has said to me,know what He has said to me""",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: AppColors.textColorWhite, fontSize: 18, fontWeight: FontWeight.w500),
                    maxLines: 20,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: SliderWidget(
                light: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  CircleAvatar(
                      radius: 28,
                      backgroundColor: AppColors.textColorWhite,
                      child: SvgPicture.asset(
                        "asset/pause.svg",
                        height: 24,
                        width: 24,
                        colorFilter: const ColorFilter.mode(
                          AppColors.black,
                          BlendMode.srcIn,
                        ),
                      )),
                  SvgPicture.asset("asset/share.svg",
                      height: 24,
                      width: 24,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
