import 'package:bookly/core/Utils/AssetsData.dart';
import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/RateWedget.dart';
import 'package:flutter/material.dart';

class BestSellerListitem extends StatelessWidget {
  const BestSellerListitem({super.key});

  @override
  Widget build(BuildContext context) { 
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.height * 0.11,
          child: AspectRatio(
            aspectRatio: 1.27 / 2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetsDate.testPhoto),
                  fit: BoxFit.fill,
                ),
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
                child: const Text(
                  'Harry Potter and the Goblet of Fiblet of Fiblet of Fiblet of Fire',
                  style: TextStyles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Text(
                'J.K. Rowling',
                style: TextStyles.textStyle14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '19.99 €',
                    style: TextStyles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Ratewedget()
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
