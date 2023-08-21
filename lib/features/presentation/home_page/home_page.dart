import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_and_sip_app/features/presentation/home_page/widgets/list_of_loaded_cocktails.dart';
import 'package:shake_and_sip_app/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColor.deepBlack,
      body: SafeArea(child: ListOfLoadedCocktails()),
    );
  }
}
