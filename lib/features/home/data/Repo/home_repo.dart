import 'package:booky/core/utils/errors.dart';
import 'package:dartz/dartz.dart';

import '../models/BookModel.dart';

abstract class HomeRepo {

 Future<Either<Failure,List<BookModel>>> fetchNewestBooks();

 Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

 Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category} );

}
