import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomTextbuttom.dart';
import 'package:flutter/material.dart';

class BookActionbuttom extends StatelessWidget {
  const BookActionbuttom({super.key});

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
