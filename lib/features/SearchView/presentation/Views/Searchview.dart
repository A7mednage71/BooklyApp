import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: searchViewBody(),
      ),
    );
  }
}

class searchViewBody extends StatelessWidget {
  const searchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
