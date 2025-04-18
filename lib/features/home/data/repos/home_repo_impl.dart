import 'package:dartz/dartz.dart';
import 'package:readly/core/errors/failuers.dart';
import 'package:readly/features/home/data/models/book_model/book_model.dart';
import 'package:readly/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<List<Either<List<BookModel>, Failure>>> featchBestSellerBooks() {
    // TODO: implement featchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<List<Either<List<BookModel>, Failure>>> featchFeaturedBooks() {
    // TODO: implement featchFeaturedBooks
    throw UnimplementedError();
  }
}
