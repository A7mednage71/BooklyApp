import 'package:bookly/constants.dart';
import 'package:bookly/core/Utils/AppRouter.dart';
import 'package:bookly/core/Utils/Service_Locator.dart';
import 'package:bookly/features/HomeView/Data/repos/Home_Rep_Imple.dart';
import 'package:bookly/features/HomeView/Presentation/manger/Featuredbooks_Cubit/featured_books_cubit.dart';
import 'package:bookly/features/HomeView/Presentation/manger/NewsetBooks_Cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => NewSetBooksCubit(getIt.get<HomeRepoImpl>()),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(),
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
