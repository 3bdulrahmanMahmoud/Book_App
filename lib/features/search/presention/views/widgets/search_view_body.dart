import 'package:bookly_app/core/utlis/app_Style_strings.dart';
import 'package:bookly_app/features/home/presention/widgets/Book_View_section2.dart';
import 'package:bookly_app/features/search/presention/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Search about you book here",
            style: AppStyleStrings.ragurl25.copyWith(color: Colors.white70),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Align(child: SizedBox(width: 365, child: customTextField())),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Search Results",
          style: AppStyleStrings.ragurl25,
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => const BookViewSection2(),
          itemCount: 6,
        ))
      ],
    );
  }
}
