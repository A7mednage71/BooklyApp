import 'package:bookly/features/HomeView/Presentation/Views/wedgets/CustomListView.dart';
import 'package:flutter/material.dart';

class ListView_Builder extends StatelessWidget {
  const ListView_Builder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (Context, index) {
            return const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Custom_ListView_item(),
            );
          }),
    );
  }
}
