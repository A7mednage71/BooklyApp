import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/BookDetailsAppBar.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomBookitem.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/RateWedget.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BookDetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.20,
            ),
            child: const Custom_Book_item(),
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
        ],
      ),
    );
  }
}
