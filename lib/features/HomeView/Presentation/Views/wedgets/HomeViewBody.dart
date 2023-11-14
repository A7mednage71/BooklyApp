import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomAppPar.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomListView.dart';
import 'package:bookly/features/HomeView/Presentation/Views/wedgets/ListViewBuilder.dart';
import 'package:flutter/material.dart';

class Home_View_body extends StatelessWidget {
  const Home_View_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
          style: TextStyles.mediumStyle,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
