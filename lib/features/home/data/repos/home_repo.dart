import 'package:dartz/dartz.dart';
import 'package:readly/core/errors/failuers.dart';
import 'package:readly/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
