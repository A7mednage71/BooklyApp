import 'package:bookly/core/Utils/Service_Locator.dart';
import 'package:bookly/features/HomeView/Data/repos/Home_Rep_Imple.dart';
import 'package:bookly/features/HomeView/Presentation/manger/SearchBooks_cubit/search_books_cubit.dart';
import 'package:bookly/features/SearchView/presentation/Views/widgets/SearchViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => SearchBooksCubit(getIt.get<HomeRepoImpl>()),
          child: const SearchViewBody(),
        ),
      ),
    );
  }
}
