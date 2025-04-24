import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readly/core/widgets/custom_error_widget.dart';
import 'package:readly/features/home/presentation/views/home/widgets/best_seller_listview_item.dart';
import 'package:readly/features/search/presantation/View/widget/custom_search_text_feild.dart';
import 'package:readly/features/search/presantation/View/widget/search_result_list_view.dart';
import 'package:readly/features/search/presantation/manger/search_for_books/search_controller_cubit.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextFeild(
            controller: searchController,
            onSubmitted: (value) {
              context.read<SearchControllerCubit>().fetchSearchBooks(value);
            },
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BlocBuilder<SearchControllerCubit, SearchControllerState>(
              builder: (context, state) {
                if (state is SearchControllerLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is SearchControllerSuccess) {
                  if (state.books.isEmpty) {
                    return const Center(child: Text('No results found'));
                  }
                  return ListView.builder(
                    itemCount: state.books.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: BookListviewItem(bookModel: state.books[index]),
                      );
                    },
                  );
                } else if (state is SearchControllerFailure) {
                  return CustomErrorWidget(errMessage: state.errMessage);
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
