import 'package:booky/core/di/di.dart';
import 'package:booky/features/home/data/models/BookModel.dart';
import 'package:booky/features/search/presentation/view/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/cubits/similar_books_cubit/similar_books_cubit.dart';
import '../../features/home/data/Repo/home_repo_impl.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
