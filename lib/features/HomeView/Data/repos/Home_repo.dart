import 'package:bookly/core/errors/Failurs.dart';
import 'package:bookly/features/HomeView/Data/Models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
