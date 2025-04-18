import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.animation});

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, _) {
        return SlideTransition(
          position: animation,
          child: Text('Read Free Books', textAlign: TextAlign.center),
        );
      },
    );
  }
}
