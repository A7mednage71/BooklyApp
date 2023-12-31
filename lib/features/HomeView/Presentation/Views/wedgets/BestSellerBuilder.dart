import 'package:bookly/core/Utils/CustomLoadingIndicator.dart';
import 'package:bookly/core/Utils/Custom_Failure_widget.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/BestSelleritem.dart';
import 'package:bookly/features/HomeView/Presentation/manger/NewsetBooks_Cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellersBuilder extends StatelessWidget {
  const BestSellersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewSetBooksCubit, NewSetBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
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
