import 'package:flutter/material.dart ';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readly/core/widgets/custom_error_widget.dart';
import 'package:readly/features/home/presentation/manger/newest_book_cubit/newset_books_cubit.dart';
import 'package:readly/features/home/presentation/views/home/widgets/best_seller_listview_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            itemBuilder: (context, index) {
              // ignore: prefer_const_constructors
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListviewItem(bookModel: state.books[index]),
              );
            },

            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
