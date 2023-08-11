import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shake_and_sip_app/features/presentation/home_page/home_page.dart';
import 'package:shake_and_sip_app/utils/colors.dart';

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
        return MaterialApp(
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
                  fontSize: 16.sp,
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
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter'),
            ),
          ),
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}
