import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

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

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
                    'if you are lost in the forest without the Internet, then no problem! you can always see how to make your favorite drinks, if you have saved them',
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
