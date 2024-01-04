import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderDemoScreen extends StatefulWidget {
  const AnimatedBuilderDemoScreen({super.key});

  @override
  State<AnimatedBuilderDemoScreen> createState() => _AnimatedBuilderDemoScreenState();
}

class _AnimatedBuilderDemoScreenState extends State<AnimatedBuilderDemoScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _scaleAnimation = Tween<double>(begin: 1, end: 0).animate(_controller);
    /*_controller.addListener(() {
      setState(() {});
    });*/
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
          child: AnimatedBuilder(
            animation: _controller,
            builder: (ctx, _) => Transform.rotate(
              alignment: Alignment.center,
              angle: 2 * pi * _controller.value,
              child: Container(
                color: Colors.red,
                width: 200 * _scaleAnimation.value,
                height: 200 * _scaleAnimation.value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
