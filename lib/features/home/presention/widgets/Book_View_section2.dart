
import 'package:bookly_app/core/utlis/app_Style_strings.dart';
import 'package:bookly_app/core/utlis/app_strings.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class BookViewSection2 extends StatelessWidget {
  const BookViewSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.assetsImagesBook),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 280,
              child: Text(
                AppStrings.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppStyleStrings.ragurl25,
              ),
            ),
            Text(
              AppStrings.creator,
              style: AppStyleStrings.ragurl14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.price),
               const SizedBox(
                  width: 200,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(AppStrings.rate)
              ],
            )
          ],
        )
      ],
    );
  }
}
