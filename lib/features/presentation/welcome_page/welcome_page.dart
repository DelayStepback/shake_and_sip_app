import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../utils/colors.dart';
import '../bloc/auth_bloc/auth_bloc.dart';
import '../bloc/auth_bloc/auth_event.dart';
import '../bloc/auth_bloc/auth_state.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 800.h,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  onPageChanged: (newPage) {
                    setState(() {
                      page = newPage;
                    });
                  },
                  children: [
                    const _Auth(),
                    const _Page1(),
                    const _Page2(),
                    const _Page3(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24).r,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _indicators(4, page)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Page1 extends StatelessWidget {
  const _Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Shake&Sip',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 350.w,
            height: 250.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: MyColor.deepBlack),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0).r,
                  child: Text(
                    'if you like to drink, then this app is created especially for you, SHAKER&SIPPER',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.man, size: 40.r, color: MyColor.white),
                    Icon(Icons.man, size: 30.r, color: MyColor.white),
                    Icon(Icons.man, size: 20.r, color: MyColor.white),
                    Icon(Icons.sip, size: 40.r, color: MyColor.white),
                    Icon(Icons.man, size: 20.r, color: MyColor.white),
                    Icon(Icons.man, size: 30.r, color: MyColor.white),
                    Icon(Icons.man, size: 40.r, color: MyColor.white)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Page2 extends StatelessWidget {
  const _Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Favourite cocktails',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 350.w,
            height: 370.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: MyColor.deepBlack),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0).r,
                  child: Text(
                    'if you are lost in the forestd without the Internet, then no problem! you can always see how to make your favorite drinks, if you have saved them',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.cached, size: 40.r, color: MyColor.white),
                    Icon(Icons.cached, size: 30.r, color: MyColor.white),
                    Icon(Icons.cached, size: 20.r, color: MyColor.white),
                    Icon(Icons.signal_wifi_connected_no_internet_4,
                        size: 40.r, color: MyColor.white),
                    Icon(Icons.cached, size: 20.r, color: MyColor.white),
                    Icon(Icons.cached, size: 30.r, color: MyColor.white),
                    Icon(Icons.cached, size: 40.r, color: MyColor.white)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Page3 extends StatelessWidget {
  const _Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'What about Cocktails???',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 350.w,
            height: 550.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: MyColor.deepBlack),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _descriptionForCocktail(
                  text: 'TITLE: Cocktail',
                  icon: Icons.ac_unit,
                ),
                _descriptionForCocktail(
                  text: 'DESCRIPTION: mmm.. so tasty',
                  icon: Icons.ac_unit,
                ),
                _descriptionForCocktail(
                  text: 'PORTION: for 1-2 good guys/girls',
                  icon: Icons.ac_unit,
                ),
                _descriptionForCocktail(
                  text: 'TIME: 1m and you ready :)',
                  icon: Icons.ac_unit,
                ),
                _descriptionForCocktail(
                  text: 'INGREDIENTS: lime, vodka + vodka',
                  icon: Icons.ac_unit,
                ),
                _descriptionForCocktail(
                  text: 'METHOD: Step 1: ...',
                  icon: Icons.ac_unit,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Auth extends StatelessWidget {
  const _Auth({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;
    return state.when(
        loading: () => const _Loading(error: ''),
        authenticated: () {
          return Center(
              child: GestureDetector(
            onTap: () => context.go('/'),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: MyColor.darkWhite,
              ),
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Text(
                  'Go to Cocktails',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
          ));
        },
        unAuthenticatedSignUp: () => const _SignUpWidget(
              error: '',
            ),
        unAuthenticatedSignIn: () => const _SignInWidget(
              error: '',
            ),
        error: (error) {
          return _SignUpWidget(
            error: error,
          );
        });
  }
}

class _SignUpWidget extends StatelessWidget {
  const _SignUpWidget({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "I don't think we've seen you",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            error,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Container(
            width: 350.w,
            height: 300.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: MyColor.deepBlack),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 300.w,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0).r,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Email",
                      fillColor: Colors.white70,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 300.w,
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0).r,
                      ),
                      filled: true,
                      hintStyle:
                          TextStyle(color: Colors.grey[800], fontSize: 16.r),
                      hintText: "Password",
                      fillColor: Colors.white70,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.loadSignIn());
                    },
                    child: Text(
                      'Sign In',
                      style: Theme.of(context).textTheme.labelSmall,
                    )),
                GestureDetector(
                  onTap: () {
                    context.read<AuthBloc>().add(const AuthEvent.signUpRequested(
                        email: 'blablabla11@gmail.com',
                        password: 'qQQwerty1234123'));
                  },
                  child: Container(
                    width: 100,
                    height: 60,
                    decoration: (
                    BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0).r,
                    color: MyColor.darkWhite,
                    )
                    ),
                    child:                 Center(
                      child: Text(
                        'Sign up',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SignInWidget extends StatelessWidget {
  const _SignInWidget({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "It's, your, bro??",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            error,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Container(
            width: 350.w,
            height: 300.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: MyColor.deepBlack),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 300.w,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0).r,
                      ),
                      filled: true,
                      hintStyle:
                          TextStyle(color: Colors.grey[800], fontSize: 16.r),
                      hintText: "Email",
                      fillColor: Colors.white70,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 300.w,
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0).r,
                      ),
                      filled: true,
                      hintStyle:
                          TextStyle(color: Colors.grey[800], fontSize: 16.r),
                      hintText: "Password",
                      fillColor: Colors.white70,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.loadSignUp());
                    },
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.labelSmall,
                    )),
                GestureDetector(
                  onTap: () {
                    context.read<AuthBloc>().add(const AuthEvent.signInRequested(
                        email: 'blablabla11@gmail.com',
                        password: 'qQQwerty1234123'));
                  },
                  child: Container(
                    width: 100,
                    height: 60,
                    decoration: (
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0).r,
                          color: MyColor.darkWhite,
                        )
                    ),
                    child:                 Center(
                      child: Text(
                        'Sign In',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "I don't think we've seen you",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            error,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Container(
            width: 350.w,
            height: 300.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: MyColor.deepBlack),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularProgressIndicator()],
            ),
          ),
        ],
      ),
    );
  }
}

class _descriptionForCocktail extends StatelessWidget {
  const _descriptionForCocktail(
      {super.key, required this.text, required this.icon});

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: MyColor.darkWhite),
      width: 320.w,
      height: 40.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15).r,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                maxLines: 1,
              ),
            ),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}

List<Widget> _indicators(imagesLength, currentIndex) {
  print(currentIndex);
  return List<Widget>.generate(imagesLength, (index) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(3).w,
      width: currentIndex == index ? 30.w : 10.w,
      height: 10.h,
      decoration: BoxDecoration(
        color: MyColor.deepBlack,
//          shape: currentIndex == index ? BoxShape.rectangle : BoxShape.circle,
        borderRadius: currentIndex == index
            ? const BorderRadius.all(Radius.circular(39)).w
            : const BorderRadius.all(Radius.circular(51)).w,
      ),
    );
  });
}
