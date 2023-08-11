import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shake_and_sip_app/features/presentation/home_page/home_page.dart';
import 'package:shake_and_sip_app/utils/colors.dart';

import 'features/data/cocktail/cocktails_repository.dart';
import 'features/presentation/bloc/cocktails_bloc.dart';

void main() async {
  await Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return RepositoryProvider(
          create: (context) => CocktailRepository(),
          child: BlocProvider(
            create: (context) => CocktailsBloc(
                RepositoryProvider.of<CocktailRepository>(context)),
            child: MaterialApp(
              title: 'Shake \& Sip',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                textTheme: TextTheme(
                  titleLarge: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2.0.r, 2.0.r),
                          blurRadius: 3.0.r,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        )
                      ],
                      color: MyColor.textColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inter'),
                  titleMedium: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2.0.r, 2.0.r),
                          blurRadius: 3.0.r,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        )
                      ],
                      color: MyColor.textColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter'),
                  bodySmall: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2.0.r, 2.0.r),
                          blurRadius: 3.0.r,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        )
                      ],
                      color: MyColor.textColor,
                      fontSize: 14.sp,
                      fontFamily: 'Inter'),
                ),
              ),
              home: child,
            ),
          ),
        );
      },
      child: const HomePage(),
    );
  }
}
