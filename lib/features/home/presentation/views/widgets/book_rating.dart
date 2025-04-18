import 'package:flutter/material.dart';
import 'package:readly/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Color(0xffFFDD4F)),
        const SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Styles.textStyles16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 5),
        Text(
          '(268)',
          style: Styles.textStyles14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
