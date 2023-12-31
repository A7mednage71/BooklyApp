import 'package:bookly/features/SearchView/presentation/Views/widgets/CustomApppar.dart';
import 'package:bookly/features/SearchView/presentation/Views/widgets/SearchListView.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Utils/TextStyles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Search Results',
            style: TextStyles.textStyle18,
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
