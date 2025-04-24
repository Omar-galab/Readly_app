part of 'search_controller_cubit.dart';

@immutable
abstract class SearchControllerState {}

class SearchControllerInitial extends SearchControllerState {}

class SearchControllerLoading extends SearchControllerState {}

class SearchControllerSuccess extends SearchControllerState {
  final List<BookModel> books;
  SearchControllerSuccess(this.books);
}

class SearchControllerFailure extends SearchControllerState {
  final String errMessage;
  SearchControllerFailure(this.errMessage);
}