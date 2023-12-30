import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomBookitem.dart';
import 'package:flutter/material.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Custom_Book_item(photoUrl: 'https://miro.medium.com/v2/resize:fit:1400/1*GLoQJzDAZ_C6G2p2FCA-hQ.png',),
          );
        },
      ),
    );
  }
}
