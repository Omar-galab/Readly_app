import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:readly/features/home/data/models/book_model/book_model.dart';
import 'package:readly/features/home/data/repos/home_repo.dart';
import 'package:readly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(NewsetBooksFailure(failure.errMessage)),
      (books) => emit(NewsetBooksSuccess(books)),
    );
  }
}
