import 'package:flutter/material.dart';

class TweenAnimationBuilderScreen extends StatefulWidget {
  const TweenAnimationBuilderScreen({super.key});

  @override
  State<TweenAnimationBuilderScreen> createState() => _TweenAnimationBuilderScreenState();
}

class _TweenAnimationBuilderScreenState extends State<TweenAnimationBuilderScreen> {
  double _value = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: _value),
          onEnd: () => debugPrint('TweenAnimationBuilder --> END'),
          duration: const Duration(milliseconds: 1500),
          child: const Icon(Icons.extension, color: Colors.blueGrey),
          builder: (context, size, child) {
            return IconButton(
              iconSize: size,
              icon: child!,
              onPressed: () => setState(() => _value = _value == 60 ? 200 : 60),
            );
          },
        ),
      ),
    );
  }
}
