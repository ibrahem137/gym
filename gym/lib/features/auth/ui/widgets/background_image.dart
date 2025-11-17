import 'package:flutter/material.dart';
import 'package:gym/gen/assets.gen.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.gymOrangeBackground.path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
