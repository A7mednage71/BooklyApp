import 'package:flutter/material.dart';

class Sliding_animation extends StatelessWidget {
  const Sliding_animation({
    super.key,
    required this.slidinganimation,
  });

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidinganimation,
          child: const Text(
            'Read Free books',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
