import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_and_sip_app/features/presentation/home_page/widgets/list_of_loaded_cocktails.dart';
import 'package:shake_and_sip_app/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.lightBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Good \$morning for drinking',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            GestureDetector(
              onTap: () => {
                context.goNamed("allFav"),
              },
              child: Container(
                height: 30.h,
                width: 60.w,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: MyColor.mainColor,
                ),
                child: Center(
                    child: Text(
                  "FAV's",
                  style: Theme.of(context).textTheme.titleMedium,
                )),
              ),
            ),
            const ListOfLoadedCocktails(),
          ],
        ),
      ),
    );
  }
}
