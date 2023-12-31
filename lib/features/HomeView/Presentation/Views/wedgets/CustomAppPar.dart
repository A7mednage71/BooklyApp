import 'package:bookly/core/Utils/AssetsData.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Custom_App_Bar extends StatelessWidget {
  const Custom_App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsDate.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/Search_View');
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 23,
            ),
          ),
        ],
      ),
    );
  }
}
