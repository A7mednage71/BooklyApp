import 'package:bookly/core/Utils/CustomLoadingIndicator.dart';
import 'package:bookly/core/Utils/Custom_Failure_widget.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/BestSelleritem.dart';
import 'package:bookly/features/HomeView/Presentation/manger/SearchBooks_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchBooksFailure) {
          return CustomFailureWidget(
            errorMessage: state.message,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
