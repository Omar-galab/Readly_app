import 'package:flutter/material.dart';
import 'package:readly/core/utils/styles.dart';
import 'package:readly/features/book_details/Widget/books_actions.dart';
import 'package:readly/features/book_details/Widget/books_details_sections.dart';
import 'package:readly/features/book_details/Widget/custom_book_appbar_details.dart';
import 'package:readly/features/book_details/Widget/similer_books_listview.dart';
import 'package:readly/features/book_details/Widget/similer_books_sections.dart';
import 'package:readly/features/home/presentation/views/home/widgets/book_rating.dart';
import 'package:readly/features/home/presentation/views/home/widgets/custom_book_image.dart';
import 'package:readly/features/home/presentation/views/home/widgets/featured_books_list_view.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookAppbarDetails(),
                SizedBox(height: 10),
                BooksDetailsSections(),

                SizedBox(height: 37),
                SimilerBooksSections(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
