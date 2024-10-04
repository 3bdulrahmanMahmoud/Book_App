import 'package:bookly_app/core/utlis/app_Style_strings.dart';
import 'package:bookly_app/core/utlis/app_strings.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/features/home/presention/widgets/bookView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
              IconButton(
                  onPressed: () {}, icon: SvgPicture.asset(Assets.CartIcon))
            ],
          ),
          Container(
            width: 250,
            height: 300,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              Assets.book_Hightligh,
              fit: BoxFit.fill,
            ),
          ),
          const Text(
            "The Jungle book",
            style: AppStyleStrings.ragurl25,
          ),
          Text(
            AppStrings.creator,
            style: AppStyleStrings.ragurl14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star_outlined,
                color: Colors.amber,
              ),
              Text(AppStrings.rate)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CustomContainer(
              //   text: "free",
              //   topLeft: 10,
              //   topRight: 0,
              //   bottomLeft: 0,
              //   bottomRight: 10,
              //   color: Colors.white,
              //   textColor: Colors.black,
              // ),
              // CustomContainer(
              //     text: "Preview Free",
              //     topLeft: 0,
              //     topRight: 10,
              //     bottomLeft: 10,
              //     bottomRight: 0,
              //     color: Colors.orangeAccent)
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            child: Text(
              "you can also like",
              style: AppStyleStrings.ragurl20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const BookView(),
            itemCount: 10,
          ))
        ],
      ),
    );
  }
}
