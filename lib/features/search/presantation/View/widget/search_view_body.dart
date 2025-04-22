import 'package:flutter/material.dart';
import 'package:readly/features/search/presantation/View/widget/custom_search_text_feild.dart';
import 'package:readly/features/search/presantation/View/widget/search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFeild(),
          SizedBox(height: 16),
          Text(
            'Search Result',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
