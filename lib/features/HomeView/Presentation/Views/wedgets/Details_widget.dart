import 'package:bookly/core/helpers/LauncherURi.dart';
import 'package:bookly/features/HomeView/Data/Models/book_model.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomTextbuttom.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActionbuttom extends StatelessWidget {
  const BookActionbuttom({super.key, required this.model});

  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextButton(
          onPressed: () {},
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          textcolor: Colors.black,
          backgroundcolor: Colors.white,
          text: 'Free',
        ),
        CustomTextButton(
          onPressed: () async {
            LauncherUri(context, model.volumeInfo!.previewLink!);
          },
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          textcolor: Colors.white,
          backgroundcolor: const Color(0xffEF8262),
          text: GetText(model),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  String GetText(BookModel model) {
    if (model.volumeInfo!.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Free preview';
    }
  }
}
