import 'package:bloc/bloc.dart';
import 'package:bookly/features/HomeView/Data/Models/book_model.dart';
import 'package:bookly/features/HomeView/Data/repos/Home_repo.dart';
import 'package:meta/meta.dart';

part 'newset_books_state.dart';

class NewSetBooksCubit extends Cubit<NewSetBooksState> {
  NewSetBooksCubit(this.homeRepo) : super(NewSetBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewSetBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) => emit(FeaturedBooksFailure(failure.message)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }
}
