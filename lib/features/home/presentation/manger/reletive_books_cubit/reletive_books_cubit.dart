import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:readly/features/home/data/repos/home_repo.dart';
import 'package:readly/models/book_model/book_model.dart';

part 'reletive_books_state.dart';

class ReletiveBooksCubit extends Cubit<ReletiveBooksState> {
  ReletiveBooksCubit(this.homeRepo) : super(ReletiveBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchReletiveBooks({required String category}) async {
    emit(ReletiveBooksLoading());
    var result = await homeRepo.fetchReletiveBooks(category: category);
    result.fold(
      (failuer) => emit(ReletiveBooksFailure(failuer.errMessage)),
      (books) => emit(ReletiveBooksSuccess(books)),
    );
  }
}
