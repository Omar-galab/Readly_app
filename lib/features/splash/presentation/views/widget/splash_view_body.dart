import 'package:flutter/material.dart';
import 'package:readly/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetsData.logo,width: 200,height: 50,),
      const Text('Read Free Books',textAlign: TextAlign.center,),],
    );
  }
}
