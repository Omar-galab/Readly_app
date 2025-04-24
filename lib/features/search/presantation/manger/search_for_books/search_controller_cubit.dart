import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:readly/models/book_model/book_model.dart';

part 'search_controller_state.dart';

class SearchControllerCubit extends Cubit<SearchControllerState> {
  SearchControllerCubit() : super(SearchControllerInitial());

  Future<void> fetchSearchBooks(String query) async {
    emit(SearchControllerLoading());
    try {
      final response = await Dio().get(
        'https://www.googleapis.com/books/v1/volumes?q=$query',
        //queryParameters: {'q=': query},
      );

      if (response.statusCode == 200) {
        final books =
            (response.data['items'] as List)
                .map((item) => BookModel.fromJson(item))
                .toList();
        emit(SearchControllerSuccess(books));
      } else {
        emit(SearchControllerFailure('Failed to load books'));
      }
    } catch (e) {
      emit(SearchControllerFailure(e.toString()));
    }
  }
}
