import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readly/features/search/presantation/manger/search_for_books/search_controller_cubit.dart';
import 'package:readly/features/search/presantation/View/widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => SearchControllerCubit(),
          child: const SearchViewBody(),
        ),
      ),
    );
  }
}
