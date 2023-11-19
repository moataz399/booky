part of 'newset_books_cubit.dart';

@immutable
abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}


class NewestBooksLoading extends NewestBooksState {}
class NewestBooksSuccess extends NewestBooksState {
final   List<BookModel> books ;

  NewestBooksSuccess(this.books);
}
class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;

  NewestBooksFailure(this.errorMessage);
}

