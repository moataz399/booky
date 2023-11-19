import 'package:bloc/bloc.dart';
import 'package:booky/features/home/data/models/BookModel.dart';
import 'package:meta/meta.dart';

import '../../features/home/data/Repo/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();

    return result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });




  }



}
