import 'package:bloc/bloc.dart';
import 'package:bookly/core/errors/Failurs.dart';

import 'package:bookly/features/HomeView/Data/Models/book_model.dart';
import 'package:bookly/features/HomeView/Data/repos/Home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  // ignore: non_constant_identifier_names
  Future<void> fetch_featured_Books() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) => emit(FeaturedBooksFailure(failure.message)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }
}
