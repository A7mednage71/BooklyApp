import 'package:bookly/features/HomeView/Presentation/Views/wedgets/BestSelleritem.dart';
import 'package:flutter/material.dart';

class BestSellerlistBuilder extends StatelessWidget {
  const BestSellerlistBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
       // shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (Context, insdex) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListitem(),
          );
        },
      ),
    );
  }
}
