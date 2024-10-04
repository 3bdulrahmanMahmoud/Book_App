// ignore_for_file: file_names

import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10.0,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: 165,
            height: 225,
            child: Image.asset(
              Assets.book_Hightligh,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 40,
            right: 30,
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
