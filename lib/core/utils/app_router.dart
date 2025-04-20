import 'package:go_router/go_router.dart';
import 'package:readly/features/book_details/book_details_view.dart';
import 'package:readly/features/home/presentation/views/home/home_view.dart';
import 'package:readly/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeview';
  static const kBookDetailsView = '/bookdetailsview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
