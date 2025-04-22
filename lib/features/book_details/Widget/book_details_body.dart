import 'package:flutter/material.dart';
import 'package:readly/core/utils/styles.dart';
import 'package:readly/features/book_details/Widget/books_actions.dart';
import 'package:readly/features/book_details/Widget/custom_book_appbar_details.dart';
import 'package:readly/features/home/presentation/views/home/widgets/book_rating.dart';
import 'package:readly/features/home/presentation/views/home/widgets/custom_book_image.dart';
import 'package:readly/features/home/presentation/views/home/widgets/featured_books_list_view.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookAppbarDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.21),
            child: const CustomBookImage(
              imageUrl:
                  'https://lumiere-a.akamaihd.net/v1/images/p_thejunglebook2016_19751_6b8cfcec.jpeg?region=0%2C0%2C540%2C810',
            ),
          ),
          const SizedBox(height: 43),
          const Text('The Jungle Book', style: Styles.textStyles30),
          const SizedBox(height: 6),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyles18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const BookRating(
            rating: 4.8,
            count: 168,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 37),
          const BooksActions(),
        ],
      ),
    );
  }
}
