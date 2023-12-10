import 'package:bookly/core/Utils/AssetsData.dart';
import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomAppPar.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/ListViewBuilder.dart';
import 'package:flutter/material.dart';

class Home_View_body extends StatelessWidget {
  const Home_View_body({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Custom_App_Bar(),
        SizedBox(
          child: ListView_Builder(),
        ),
        SizedBox(
          height: 40,
        ),
         Text(
        '      Best Seller',
           style: TextStyles.textStyle18,
       ),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerListView(),
        )
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

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
        Column(
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
          ],
        )
      ],
    );
  }
}
