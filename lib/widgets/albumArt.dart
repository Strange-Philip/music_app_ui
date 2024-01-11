import 'package:flutter/material.dart';

class AlbumArt extends StatelessWidget {
  const AlbumArt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 20),
      child: Container(
        width: double.infinity,
        height: 390,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          image: const DecorationImage(
            image: AssetImage('asset/albumArt.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
