
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SectionAppBar extends StatelessWidget {
  const SectionAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: 
        [
          SvgPicture.asset(Assets.assetsImagesLogo),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search))
        ],
      ),
    );
  }
}