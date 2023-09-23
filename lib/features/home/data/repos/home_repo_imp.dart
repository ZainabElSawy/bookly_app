import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo{
  @override
  List<Either<Failure, BookModel>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  List<Either<Failure, BookModel>> fetchFeaturedBooks() {

    throw UnimplementedError();
  }

}