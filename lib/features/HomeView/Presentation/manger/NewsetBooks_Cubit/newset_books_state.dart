part of 'newset_books_cubit.dart';

@immutable
sealed class NewSetBooksState {}

final class NewSetBooksInitial extends NewSetBooksState {}

final class FeaturedBooksLoading extends NewSetBooksState {}

final class FeaturedBooksFailure extends NewSetBooksState {
  final String message;

  FeaturedBooksFailure(this.message);
}

final class FeaturedBooksSuccess extends NewSetBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}
