import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.text});
  final String text;
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.text)
            .animate(
              onPlay: (controller) => controller.repeat(),
            )
            .fadeIn()
            .scale()
            .move(delay: 300.ms, duration: 300.ms)
            .blurXY(),
      ),
    );
  }
}
