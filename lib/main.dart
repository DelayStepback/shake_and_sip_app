import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/cocktails_fav_bloc/cocktails_fav_bloc.dart';
import 'package:shake_and_sip_app/features/presentation/favourite_page/favourite_page.dart';
import 'package:shake_and_sip_app/features/presentation/home_page/home_page.dart';
import 'package:shake_and_sip_app/utils/colors.dart';

import 'features/data/cocktail/cocktails_repository.dart';
import 'features/presentation/bloc/cocktails_bloc/cocktails_bloc.dart';
import 'features/presentation/bloc/detail_bloc/detail_bloc.dart';
import 'features/presentation/detail_single_fav_page/detail_single_fav_page.dart';

void main() async {
  await Hive.initFlutter();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
          path: "/",
          builder: (context, state) {
            return const HomePage();
          }),
      GoRoute(
        path: "/allFav",
        name: "allFav",
        builder: (context, state) => MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) => CocktailsFavBloc(
                RepositoryProvider.of<CocktailRepository>(context)),
          )
        ], child: const FavouritePage()),
      ),
      GoRoute(
        path: "/fav/:id",
        name: "fav",
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => DetailBloc(
                  RepositoryProvider.of<CocktailRepository>(context)),
            ),
          ],
          child: DetailSingleFavPage(
            id: state.pathParameters['id'],
          ),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return RepositoryProvider(
          create: (context) => CocktailRepository(),
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => CocktailsBloc(
                    RepositoryProvider.of<CocktailRepository>(context)),
              ),
            ],
            child: MaterialApp.router(
              routerConfig: _router,
              title: 'Shake \& Sip',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                textTheme: TextTheme(
                  titleLarge: TextStyle(
                      color: MyColor.white,
                      fontSize: 24.sp,
                      fontFamily: 'Inter'),
                  titleMedium: TextStyle(
                      color: MyColor.textColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter'),
                  bodySmall: TextStyle(
                      color: MyColor.textColor,
                      fontSize: 14.sp,
                      fontFamily: 'Inter'),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
