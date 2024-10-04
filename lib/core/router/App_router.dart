import 'package:bookly_app/core/utlis/app_strings.dart';
import 'package:bookly_app/features/BookDetails.dart/presention/views/book_details_view.dart';
import 'package:bookly_app/features/home/presention/views/HomeView.dart';
import 'package:bookly_app/features/search/presention/views/search_view.dart';
import 'package:bookly_app/features/splash/presention/view/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: AppStrings.kHomeView,
    builder: (context, state) => const Homeview(),
  ),
  GoRoute(
    path: AppStrings.kBokkdetaols,
    builder: (context, state) => const BookDetailsView(),
  ),
  GoRoute(
    path: AppStrings.kSearchView,
    builder: (context, state) => const SearchView(),
  )
]);
