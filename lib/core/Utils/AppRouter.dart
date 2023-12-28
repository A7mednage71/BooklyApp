import 'package:bookly/features/HomeView/Presentation/Views/BookDetailsview.dart';
import 'package:bookly/features/HomeView/Presentation/Views/HomeView.dart';
import 'package:bookly/features/SearchView/presentation/Views/Searchview.dart';
import 'package:bookly/features/Splash/Presentation/Views/Splashview.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: '/Search_View',
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
