import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shake_and_sip_app/features/data/datasource/cocktails_firebase_api.dart';
import 'package:shake_and_sip_app/features/data/datasource/cocktails_hive_database.dart';
import 'package:shake_and_sip_app/features/data/repository/auth_repository_impl.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/cocktails_fav_bloc/cocktails_fav_bloc.dart';
import 'package:shake_and_sip_app/features/presentation/favourite_page/favourite_page.dart';
import 'package:shake_and_sip_app/features/presentation/home_page/home_page.dart';
import 'package:shake_and_sip_app/features/presentation/setiings_page/settings_page.dart';
import 'package:shake_and_sip_app/features/presentation/welcome_page/welcome_page.dart';
import 'package:shake_and_sip_app/utils/colors.dart';
import 'features/data/repository/cocktails_repository_impl.dart';
import 'features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'features/presentation/bloc/cocktails_bloc/cocktails_bloc.dart';
import 'features/presentation/bloc/detail_bloc/detail_bloc.dart';
import 'features/presentation/detail_single_fav_page/detail_single_fav_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/welcome',
    routes: [
      GoRoute(
        path: "/welcome",
        name: 'welcome',
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CocktailsBloc(
                  RepositoryProvider.of<CocktailRepositoryImplementation>(
                      context)),
            ),
          ],
          child: const WelcomePage(),
        ),
      ),
      GoRoute(
        path: "/",
        name: 'home',
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CocktailsBloc(
                RepositoryProvider.of<CocktailRepositoryImplementation>(
                    context),
              ),
            ),
          ],
          child: const HomePage(),
        ),
      ),
      GoRoute(
        path: "/allFav",
        name: "allFav",
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CocktailsFavBloc(
                  RepositoryProvider.of<CocktailRepositoryImplementation>(
                      context)),
            )
          ],
          child: const FavouritePage(
            connectivity: true,
          ),
        ),
      ),
      GoRoute(
        path: "/allFavLostConnectivity",
        name: "allFavLostConnectivity",
        builder: (context, state) => MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) => CocktailsFavBloc(
                RepositoryProvider.of<CocktailRepositoryImplementation>(
                    context)),
          )
        ], child: const FavouritePage(connectivity: false)),
      ),
      GoRoute(
        path: "/fav/:id",
        name: "fav",
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => DetailBloc(
                RepositoryProvider.of<CocktailRepositoryImplementation>(
                    context),
              ),
            ),
          ],
          child: DetailSingleFavPage(
            id: state.pathParameters['id'],
            connectivity: true,
          ),
        ),
      ),
      GoRoute(
        path: "/favLostConnectivity/:id",
        name: "favLostConnectivity",
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => DetailBloc(
                RepositoryProvider.of<CocktailRepositoryImplementation>(
                    context),
              ),
            ),
          ],
          child: DetailSingleFavPage(
            id: state.pathParameters['id'],
            connectivity: false,
          ),
        ),
      ),
      GoRoute(
        path: "/settings",
        name: "settings",
        builder: (context, state) => const SettingsPage(),
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
        return MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: (context) => CocktailRepositoryImplementation(
                  CocktailsHiveDatabase(), CocktailsFirebaseApi()),
            ),
            RepositoryProvider(
              create: (context) => AuthRepositoryImplementation(),
            )
          ],
          child: BlocProvider(
            create: (context) => AuthBloc(
              RepositoryProvider.of<AuthRepositoryImplementation>(context),
              RepositoryProvider.of<CocktailRepositoryImplementation>(context),
            ),
            child: MaterialApp.router(
              routerConfig: _router,
              title: 'Shake & Sip',
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
                  displayLarge: TextStyle(
                      color: MyColor.textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      fontFamily: 'Inter'),
                  bodyMedium: TextStyle(
                      color: MyColor.textColor,
                      fontSize: 16.sp,
                      fontFamily: 'Inter'),
                  labelSmall: TextStyle(
                      color: MyColor.white,
                      fontSize: 16.sp,
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
