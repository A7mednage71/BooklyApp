import 'package:bloc/bloc.dart';
import 'package:bookly/features/HomeView/Data/Models/book_model.dart';
import 'package:bookly/features/HomeView/Data/repos/Home_Rep_Imple.dart';
import 'package:meta/meta.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());

  final HomeRepoImpl homeRepo;

  Future<void> fetchSearchBooks({required String search}) async {
    emit(SearchBooksLoading());
    var result = await homeRepo.fetchSearchBooks(search: search);
    result.fold((failure) => emit(SearchBooksFailure(failure.message)),
        (books) => emit(SearchBooksSuccess(books)));
  }
}
