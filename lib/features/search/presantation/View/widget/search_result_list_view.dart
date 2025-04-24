import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readly/core/widgets/custom_error_widget.dart';
import 'package:readly/features/home/presentation/views/home/widgets/best_seller_listview_item.dart';
import 'package:readly/features/search/presantation/manger/search_for_books/search_controller_cubit.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchControllerCubit, SearchControllerState>(
      builder: (context, state) {
        if (state is SearchControllerLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is SearchControllerSuccess) {
          if (state.books.isEmpty) {
            return const Center(child: Text('No results found'));
          }
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListviewItem(bookModel: state.books[index]),
              );
            },
          );
        }
        if (state is SearchControllerFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        return const SizedBox.shrink();
      },
    );
  }
}
