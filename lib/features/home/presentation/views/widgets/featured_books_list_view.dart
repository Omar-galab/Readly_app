import 'package:flutter/material.dart';
import 'package:readly/features/home/presentation/views/widgets/custom_list_view_items.dart';

class FeatureListViewItems extends StatelessWidget {
  const FeatureListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomListViewItems(),
          );
        },
      ),
    );
  }
}
