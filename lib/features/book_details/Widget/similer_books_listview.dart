import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readly/core/widgets/custom_error_widget.dart';
import 'package:readly/core/widgets/custom_loding_indecators.dart';
import 'package:readly/features/home/presentation/manger/reletive_books_cubit/reletive_books_cubit.dart';
import 'package:readly/features/home/presentation/views/home/widgets/custom_book_image.dart';

class SimilerBooksListview extends StatelessWidget {
  const SimilerBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReletiveBooksCubit, ReletiveBooksState>(
      builder: (context, state) {
        if (state is ReletiveBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                        '',
                  ),
                );
              },
            ),
          );
        } else if (state is ReletiveBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLodingIndecators();
        }
      },
    );
  }
}
