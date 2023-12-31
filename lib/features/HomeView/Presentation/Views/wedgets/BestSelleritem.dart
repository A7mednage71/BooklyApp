import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:bookly/features/HomeView/Data/Models/book_model.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/RateWedget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetails', extra: bookModel);
      },
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.11,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: AspectRatio(
                aspectRatio: 1.27 / 2,
                child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo?.imageLinks?.smallThumbnail ??
                      'https://d1whtlypfis84e.cloudfront.net/guides/wp-content/uploads/2019/01/21131136/Kendell_Geers_-_T-error_2003_sans_T-300x224.jpg',
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    bookModel.volumeInfo!.title ?? '',
                    style: TextStyles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  bookModel.volumeInfo!.authors?[0] ?? 'UNKNOWN',
                  style: TextStyles.textStyle14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Free',
                      style: TextStyles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Ratewedget(
                      rate: bookModel.volumeInfo!.averageRating ?? 0,
                      count: bookModel.volumeInfo!.ratingsCount ?? 0,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
