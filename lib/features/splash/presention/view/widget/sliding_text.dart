import 'package:bookly_app/core/utlis/app_Style_strings.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Align(
              child: Text(
                "Reading for free",
                style: AppStyleStrings.ragurl20,
              ),
            ),
          );
        });
  }
}
