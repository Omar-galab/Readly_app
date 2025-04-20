import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readly/constans.dart';
import 'package:readly/core/utils/api_service.dart';
import 'package:readly/core/utils/service_locator.dart';
import 'package:readly/features/home/data/repos/home_repo.dart';
import 'package:readly/features/home/data/repos/home_repo_impl.dart';
import 'package:readly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:readly/features/home/presentation/manger/newest_book_cubit/newset_books_cubit.dart';
import 'package:readly/features/splash/presentation/views/splash_view.dart';

void main() {
  setupserviceLocator();
  runApp(const ReadlyApp());
}

class ReadlyApp extends StatelessWidget {
  const ReadlyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                    ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create:
              (context) =>
                  NewsetBooksCubit(getIt.get<HomeRepoImpl>())
                    ..fetchNewestBooks(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),

        home: const SplashView(),
      ),
    );
  }
}
