import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomAppPar.dart';
import 'package:flutter/material.dart';

class Home_View_body extends StatelessWidget {
  const Home_View_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Custom_App_Bar(),
      ],
    );
  }
}