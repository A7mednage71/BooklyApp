import 'package:bookly/core/Utils/Service_Locator.dart';
import 'package:bookly/features/HomeView/Data/Models/book_model.dart';
import 'package:bookly/features/HomeView/Data/repos/Home_Rep_Imple.dart';
import 'package:bookly/features/HomeView/Presentation/Views/BookDetailsview.dart';
import 'package:bookly/features/HomeView/Presentation/Views/HomeView.dart';
import 'package:bookly/features/HomeView/Presentation/manger/SimilarBooks_cubit/similar_books_cubit.dart';
import 'package:bookly/features/SearchView/presentation/Views/Searchview.dart';
import 'package:bookly/features/Splash/Presentation/Views/Splashview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        // The start page
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/Home_View',
        builder: (context, state) => const Home_View(),
      ),
      GoRoute(
        path: '/BookDetails',
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: '/Search_View',
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
