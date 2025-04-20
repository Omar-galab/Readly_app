import 'package:flutter/material.dart';
import 'package:readly/features/book_details/Widget/book_details_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: BookDetailsBody()));
  }
}
