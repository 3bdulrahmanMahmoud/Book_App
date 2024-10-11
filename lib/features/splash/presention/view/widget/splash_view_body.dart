import 'package:bookly_app/core/utlis/app_strings.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/widgets/Custom_navigate.dart';
import 'package:bookly_app/features/home/presention/views/HomeView.dart';
import 'package:bookly_app/features/splash/presention/view/widget/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    inintSlidingAnimation();
    navigateHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 200,
          height: 50,
          child: SvgPicture.asset(
            Assets.assetsImagesLogo,
            fit: BoxFit.fitWidth,
          ),
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void navigateHome() {
    Future.delayed(const Duration(seconds: 2), () {
      CustomNavigate(context, AppStrings.kHomeView);
    });
  }

  void inintSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
