import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readly/features/book_details/Widget/book_details_body.dart';
import 'package:readly/features/home/presentation/manger/reletive_books_cubit/reletive_books_cubit.dart';
import 'package:readly/models/book_model/book_model.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModl});
  final BookModel bookModl;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<ReletiveBooksCubit>(
      context,
    ).fetchReletiveBooks(category: widget.bookModl.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsBody(bookModel: widget.bookModl)),
    );
  }
}
