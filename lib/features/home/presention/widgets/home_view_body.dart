import 'package:bookly_app/features/home/presention/widgets/body_section.dart';
import 'package:bookly_app/features/home/presention/widgets/section_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [SectionAppBar(), Expanded(child: BodySection())],
      ),
    );
  }
}
