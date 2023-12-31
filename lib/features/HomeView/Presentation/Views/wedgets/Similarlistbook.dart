import 'package:bookly/core/Utils/CustomLoadingIndicator.dart';
import 'package:bookly/core/Utils/Custom_Failure_widget.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomBookitem.dart';
import 'package:bookly/features/HomeView/Presentation/manger/SimilarBooks_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Custom_Book_item(
                    imageUrl: state.books[index].volumeInfo!.imageLinks!
                            .smallThumbnail ??
                        '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomFailureWidget(errorMessage: state.message);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
