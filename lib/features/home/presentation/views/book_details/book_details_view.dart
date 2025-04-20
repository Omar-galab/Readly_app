import 'package:flutter/material.dart';
import 'package:readly/features/home/presentation/views/book_details/Widget/home_details_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BookDetailsBody());
  }
}
