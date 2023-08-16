import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("Loading...").animate(
            onPlay: (controller) => controller.repeat(),
          )
              .fadeIn() // uses `Animate.defaultDuration`
              .scale() // inherits duration from fadeIn
              .move(delay: 300.ms, duration: 300.ms) // runs after the above w/new duration
              .blurXY() // inherits the delay & duration from move
      ),
    );
  }
}

