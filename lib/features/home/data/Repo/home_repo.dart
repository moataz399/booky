import 'package:booky/core/utils/errors.dart';
import 'package:dartz/dartz.dart';

import '../models/BookModel.dart';

abstract class HomeRepo {

 Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();

 Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

}
