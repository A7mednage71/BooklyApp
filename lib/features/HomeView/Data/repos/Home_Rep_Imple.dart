// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:bookly/core/Utils/Api_Service.dart';
import 'package:bookly/core/errors/Failurs.dart';
import 'package:bookly/features/HomeView/Data/Models/book_model.dart';
import 'package:bookly/features/HomeView/Data/repos/Home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchnewestBooks() async {
    try {
      var data = await apiService.get(
          EndPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');
      return right(data as List<BookModel>);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
