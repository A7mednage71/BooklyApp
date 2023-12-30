import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomBookitem.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/Details_widget.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/RateWedget.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.20,
          ),
          child: const Custom_Book_item(photoUrl: 'https://miro.medium.com/v2/resize:fit:1400/1*GLoQJzDAZ_C6G2p2FCA-hQ.png',),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The Jungle Book',
          style: TextStyles.textStyle30,
        ),
        Text(
          'Rudyard Kipling',
          style: TextStyles.textStyle18.copyWith(
            color: Colors.white.withOpacity(0.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const Ratewedget(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookActionbuttom(),
      ],
    );
  }
}
