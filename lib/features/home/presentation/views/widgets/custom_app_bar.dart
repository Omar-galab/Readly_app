import 'package:flutter/material.dart';
import 'package:readly/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 50, bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 25),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 30),
          ),
        ],
      ),
    );
  }
}
