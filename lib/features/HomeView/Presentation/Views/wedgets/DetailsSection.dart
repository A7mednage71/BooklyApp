import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:bookly/features/HomeView/Data/Models/book_model.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomBookitem.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/Details_widget.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/RateWedget.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.model});
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.20,
          ),
          child: Custom_Book_item(
            imageUrl: model.volumeInfo!.imageLinks!.smallThumbnail!,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            model.volumeInfo!.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.textStyle30,
          ),
        ),
        Text(
          model.volumeInfo!.authors![0],
          style: TextStyles.textStyle18.copyWith(
            color: Colors.white.withOpacity(0.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Ratewedget(
          mainAxisAlignment: MainAxisAlignment.center,
          rate: model.volumeInfo!.averageRating ?? 0,
          count: model.volumeInfo!.ratingsCount ?? 0, ////////////////////
        ),
        const SizedBox(
          height: 37,
        ),
         BookActionbuttom(model: model,),
      ],
    );
  }
}
