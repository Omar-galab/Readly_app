import 'package:flutter/material.dart';
import 'package:readly/core/utils/styles.dart';
import 'package:readly/features/book_details/Widget/similer_books_listview.dart';

class SimilerBooksSections extends StatelessWidget {
  const SimilerBooksSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyles14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        const SimilerBooksListview(),
        const SizedBox(height: 37),
      ],
    );
  }
}
