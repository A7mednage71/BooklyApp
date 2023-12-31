import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/BestSellerBuilder.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomAppPar.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/UpperListViewBuilder.dart';
import 'package:flutter/material.dart';

class Home_View_body extends StatelessWidget {
  const Home_View_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Custom_App_Bar(),
              SizedBox(
                child: UpperListView_Builder(),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '      Newest Books',
                style: TextStyles.textStyle18,
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellersBuilder(),
        )
      ],
    );
  }
}
