import 'package:bookly/features/HomeView/Presentation/Views/wedgets/BestSelleritem.dart';
import 'package:bookly/features/SearchView/presentation/Views/widgets/CustomApppar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Utils/TextStyles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Results',
            style: TextStyles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('ffffffffffffffffffffffffff')//BestSellerListItem(),
        );
      },
    );
  }
}
