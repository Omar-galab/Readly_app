import 'package:flutter/material.dart';
import 'package:readly/core/utils/styles.dart';
import 'package:readly/features/book_details/Widget/books_actions.dart';
import 'package:readly/features/home/presentation/views/home/widgets/book_rating.dart';
import 'package:readly/features/home/presentation/views/home/widgets/custom_book_image.dart';
import 'package:readly/models/book_model/book_model.dart';

class BooksDetailsSections extends StatelessWidget {
  const BooksDetailsSections({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.18),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
          ),
        ),
        const SizedBox(height: 43),

        //title
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyles30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyles18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 16),
        BookRating(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        BooksActions(bookModel: bookModel),
      ],
    );
  }
}
