import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, bottom: 10),
      child: Stack(
        children: [
          SizedBox(
            width: 165,
            height: 225,
            child: Image.asset(
              Assets.assetsImagesBook2,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white.withOpacity(.3)),
                child: SvgPicture.asset(Assets.assetsImagesPlayIcon)),
          )
        ],
      ),
    );
  }
}
