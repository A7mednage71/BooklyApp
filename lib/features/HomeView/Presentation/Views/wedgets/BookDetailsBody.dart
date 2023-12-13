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
          const SizedBox(
            height: 37,
          ),
          const DetailsButtom()
        ],
      ),
    );
  }
}

class DetailsButtom extends StatelessWidget {
  const DetailsButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomTextButton(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          textcolor: Colors.black,
          backgroundcolor: Colors.white,
          text: '19.99€',
        ),
        CustomTextButton(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          textcolor: Colors.white,
          backgroundcolor: Color(0xffEF8262),
          text: 'Free preview',
        ),
      ],
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.borderRadius,
    required this.textcolor,
    required this.backgroundcolor,
    required this.text,
  });

  final String text;
  final BorderRadiusGeometry borderRadius;
  final Color textcolor;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            backgroundColor: backgroundcolor,
          ),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyles.textStyle16.copyWith(
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
