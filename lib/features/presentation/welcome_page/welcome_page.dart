import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/colors.dart';
import '../bloc/auth_bloc/auth_bloc.dart';
import '../bloc/auth_bloc/auth_event.dart';
import 'components/auth_page.dart';
import 'components/pages.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int page = 0;

  @override
  void initState() {
    if (FirebaseAuth.instance.currentUser == null) {
    } else {
      context.read<AuthBloc>().add(const AuthEvent.alreadyLogged());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          dragStartBehavior: DragStartBehavior.down,
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 60.h,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  onPageChanged: (newPage) {
                    setState(() => page = newPage);
                  },
                  children: const [
                    Auth(),
                    Page1(),
                    Page2(),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _indicators(3, page)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> _indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(
    imagesLength,
    (index) {
      return AnimatedContainer(
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.all(3).w,
        width: currentIndex == index ? 30.w : 10.w,
        height: 10.h,
        decoration: BoxDecoration(
          color: MyColor.deepBlack,
          borderRadius: currentIndex == index
              ? const BorderRadius.all(Radius.circular(39)).w
              : const BorderRadius.all(Radius.circular(51)).w,
        ),
      );
    },
  );
}
