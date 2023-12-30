import 'package:bookly/core/Utils/CustomLoadingIndicator.dart';
import 'package:bookly/core/Utils/Custom_Failure_widget.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomBookitem.dart';
import 'package:bookly/features/HomeView/Presentation/manger/Featuredbooks_Cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpperListView_Builder extends StatelessWidget {
  const UpperListView_Builder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Custom_Book_item(
                    imageUrl: state.books[index].volumeInfo!.imageLinks!
                            .smallThumbnail ??
                        'https://miro.medium.com/v2/resize:fit:1400/1*GLoQJzDAZ_C6G2p2FCA-hQ.png',
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return const CustomFailureWidget();
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
