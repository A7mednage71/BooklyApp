import 'package:bookly/features/HomeView/Presentation/Views/wedgets/BookDetailsBody.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsBody()),
    );
  }
}
