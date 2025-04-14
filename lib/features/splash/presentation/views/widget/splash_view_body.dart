import 'package:flutter/material.dart';
import 'package:readly/core/utils/assets.dart';
import 'package:readly/features/splash/presentation/views/widget/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
    animation.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }
  @override
  void dispose() {
    super.dispose();
    // Dispose of the animation controller when the widget is removed from the widget tree
    animationController.dispose();
    
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo, width: 200, height: 50),
        SlidingText(animation: animation),
      ],
    );
  }
}

