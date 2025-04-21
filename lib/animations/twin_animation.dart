import 'package:flutter/material.dart';

class TwinsAnimation extends StatefulWidget {
  const TwinsAnimation({super.key});

  @override
  State<TwinsAnimation> createState() => _TwinsAnimationState();
}

class _TwinsAnimationState extends State<TwinsAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late Animation<Color?> colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    animation = Tween<double>(begin: 200.0, end: 100.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.deepPurple)
        .animate(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('TWIN ANIMATION'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return Container(
              width: animation.value,
              height: animation.value,
              color: colorAnimation.value ?? Colors.blue, // fallback color
            );
          },
        ),
      ),
    );
  }
}
