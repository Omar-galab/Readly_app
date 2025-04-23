import 'package:flutter/material.dart';
import 'package:readly/features/book_details/Widget/books_details_sections.dart';
import 'package:readly/features/book_details/Widget/custom_book_appbar_details.dart';
import 'package:readly/features/book_details/Widget/similer_books_sections.dart';
import 'package:readly/models/book_model/book_model.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookAppbarDetails(),
                const SizedBox(height: 10),
                BooksDetailsSections(bookModel: bookModel),

                const SizedBox(height: 37),
                const SimilerBooksSections(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
