import 'package:flutter/material.dart';

class AnimatedWidgetDemoScreen extends StatefulWidget {
  const AnimatedWidgetDemoScreen({super.key});

  @override
  State<AnimatedWidgetDemoScreen> createState() => _AnimatedWidgetDemoScreenState();
}

class _AnimatedWidgetDemoScreenState extends State<AnimatedWidgetDemoScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => _controller.forward(),
          child: RotateScaleTransition(
            animation: _controller,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class RotateScaleTransition extends AnimatedWidget {
  const RotateScaleTransition({Key? key, required Animation<double> animation, this.child})
      : super(key: key, listenable: animation);

  final Widget? child;

  Animation<double> get animation => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: animation,
      child: ScaleTransition(
        scale: ReverseAnimation(animation),
        child: child,
      ),
    );
  }
}
