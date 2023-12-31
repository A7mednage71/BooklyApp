import 'package:bookly/features/HomeView/Data/Models/book_model.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/BookDetailsAppBar.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/DetailsSection.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/SimilarBookSection.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BookDetailsAppear(),
                BookDetailsSection(
                  model: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBookSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
