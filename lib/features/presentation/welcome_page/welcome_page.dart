import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../utils/colors.dart';

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
        child:SingleChildScrollView(
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
                    const _Page1(),
                    const _Page2(),
                    const _Page3(),
                    const Text('asdas'),
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
                _descriptionForCocktail(text:  'TITLE: Cocktail',
                icon: Icons.ac_unit,),
                _descriptionForCocktail(text:  'DESCRIPTION: mmm.. so tasty',
                  icon: Icons.ac_unit,),
                _descriptionForCocktail(text:  'PORTION: for 1-2 good guys/girls',
                  icon: Icons.ac_unit,),
                _descriptionForCocktail(text:  'TIME: 1m and you ready :)',
                  icon: Icons.ac_unit,),
                _descriptionForCocktail(text:  'INGREDIENTS: lime, vodka + vodka',
                  icon: Icons.ac_unit,),
                _descriptionForCocktail(text:  'METHOD: Step 1: ...',
                  icon: Icons.ac_unit,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _descriptionForCocktail extends StatelessWidget {
  const _descriptionForCocktail({
    super.key,
    required this.text, required this.icon
  });

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
