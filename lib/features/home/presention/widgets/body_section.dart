import 'package:bookly_app/core/utlis/app_Style_strings.dart';
import 'package:bookly_app/features/home/presention/widgets/Book_View_section2.dart';
import 'package:bookly_app/features/home/presention/widgets/bookView.dart';
import 'package:flutter/material.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: ListView.builder(
              itemBuilder: (context, index) => const BookView(),
              itemCount: 6,
              scrollDirection: Axis.horizontal,
            )),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Best sellers",
          style: AppStyleStrings.ragurl20,
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            flex: 2,
            child: ListView.builder(
              itemBuilder: (context, index) => const BookViewSection2(),
              itemCount: 10,
              scrollDirection: Axis.vertical,
            ))
      ],
    );
  }
}
