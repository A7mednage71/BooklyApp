import 'package:bookly/features/HomeView/Presentation/manger/SearchBooks_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        BlocProvider.of<SearchBooksCubit>(context)
            .fetchSearchBooks(search: value);
      },
      controller: SearchController(),
      decoration: InputDecoration(
          hintText: 'Search',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
              opacity: 0.7,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 23,
              ),
            ),
          )),
    );
  }
}
