import 'package:flutter/material.dart';
import 'package:readly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:readly/features/home/presentation/views/widgets/custom_list_view_items.dart';
import 'package:readly/features/home/presentation/views/widgets/featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
       CustomAppBar(),
       FeatureListViewItems()

      ]
    );
  }
}

