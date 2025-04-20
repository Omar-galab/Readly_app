import 'package:flutter/material.dart';
import 'package:readly/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star, color: Color(0xffFFDD4F)),
        const SizedBox(width: 6.3),
        Text(
          rating.toString(),
          style: Styles.textStyles16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.7,
          child: Text('(${count.toString()})', style: Styles.textStyles14),
        ),
      ],
    );
  }
}
