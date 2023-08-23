import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key, required this.error});

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
