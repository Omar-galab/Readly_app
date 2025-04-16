import 'package:flutter/material.dart';
import 'package:readly/core/utils/assets.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/ 4,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          
          image:const DecorationImage( image: AssetImage(AssetsData.book) ,fit: BoxFit.cover)
        ),
      ),
    );
  }
}