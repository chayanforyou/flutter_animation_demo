import 'package:flutter/material.dart';

class WithoutAnimatedWidgetScreen extends StatefulWidget {
  const WithoutAnimatedWidgetScreen({super.key});

  @override
  State<WithoutAnimatedWidgetScreen> createState() => _WithoutAnimatedWidgetScreenState();
}

class _WithoutAnimatedWidgetScreenState extends State<WithoutAnimatedWidgetScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2), lowerBound: 0.3);
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
          onTap: () => _controller.forward(from: 0),
          child: RotationTransition(
            turns: _controller,
            child: ScaleTransition(
              scale: _controller,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
