import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:readly/core/utils/service_locator.dart';
import 'package:readly/features/book_details/book_details_view.dart';
import 'package:readly/features/home/data/repos/home_repo_impl.dart';
import 'package:readly/features/home/presentation/manger/reletive_books_cubit/reletive_books_cubit.dart';
import 'package:readly/features/home/presentation/views/home/home_view.dart';
import 'package:readly/features/search/presantation/View/search_view.dart';
import 'package:readly/features/splash/presentation/views/splash_view.dart';
import 'package:readly/models/book_model/book_model.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeview';
  static const kBookDetailsView = '/bookdetailsview';
  static const kSearchView = '/searchview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) => ReletiveBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(bookModl: state.extra as BookModel),
            ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
