import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/Similarlistbook.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You can also like",
            style: TextStyles.textStyle14,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SimilarBookList(),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
