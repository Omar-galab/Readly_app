part of 'reletive_books_cubit.dart';

@immutable
sealed class ReletiveBooksState {}

final class ReletiveBooksInitial extends ReletiveBooksState {}

final class ReletiveBooksSuccess extends ReletiveBooksState {
  final List<BookModel> books;
  ReletiveBooksSuccess(this.books);
}

final class ReletiveBooksFailure extends ReletiveBooksState {
  final String errMessage;
  ReletiveBooksFailure(this.errMessage);
}

final class ReletiveBooksLoading extends ReletiveBooksState {}
