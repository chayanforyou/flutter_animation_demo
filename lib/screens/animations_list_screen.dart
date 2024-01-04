import 'package:flutter/material.dart';

import 'explicit_screens/animated_builder_demo_screen.dart';
import 'explicit_screens/animated_widget_demo_screen.dart';
import 'explicit_screens/rotate_transition_screen.dart';
import 'explicit_screens/scale_transition_screen.dart';
import 'explicit_screens/tween_sequence_demo_screen.dart';
import 'explicit_screens/tween_sequence_interval_demo_screen.dart';
import 'explicit_screens/without_animated_widget_screen.dart';
import 'implicit_screens/animated_container_with_curves_screen.dart';
import 'implicit_screens/animated_opacity_screen.dart';
import 'implicit_screens/tween_animation_builder_screen.dart';

class AnimationsListScreen extends StatelessWidget {
  const AnimationsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations Flutter Demo'),
      ),
      body: Builder(
        builder: (context) => ListView(
          children: [
            ListTile(
              title: const Text('Implicit -> AnimatedOpacity'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const AnimatedOpacityScreen()));
              },
            ),
            ListTile(
              title: const Text('Implicit -> AnimatedContainer with Curves'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const AnimatedContainerWithCurvesScreen()));
              },
            ),
            ListTile(
              title: const Text('Implicit -> TweenAnimationBuilder'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const TweenAnimationBuilderScreen()));
              },
            ),
            ListTile(
              title: const Text('Explicit -> RotateTransition'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const RotateTransitionScreen()));
              },
            ),
            ListTile(
              title: const Text('Explicit -> SizeTransition'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const ScaleTransitionScreen()));
              },
            ),
            ListTile(
              title: const Text('Explicit -> without AnimatedWidget'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const WithoutAnimatedWidgetScreen()));
              },
            ),
            ListTile(
              title: const Text('Explicit -> AnimatedWidget'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const AnimatedWidgetDemoScreen()));
              },
            ),
            ListTile(
              title: const Text('Explicit -> AnimatedBuilder'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const AnimatedBuilderDemoScreen()));
              },
            ),
            ListTile(
              title: const Text('Explicit -> TweenSequence'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const TweenSequenceDemoScreen()));
              },
            ),
            ListTile(
              title: const Text('Explicit -> Tween Staggered Interval'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const TweenSequenceIntervalDemoScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
