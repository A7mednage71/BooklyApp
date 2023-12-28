import 'package:bookly/features/HomeView/Presentation/Views/wedgets/BookDetailsAppBar.dart';

import 'package:bookly/features/HomeView/Presentation/Views/wedgets/DetailsSection.dart';

import 'package:bookly/features/HomeView/Presentation/Views/wedgets/SimilarBookSection.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BookDetailsAppear(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBookSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
