import 'package:flutter/material.dart';
import 'package:readly/constans.dart';
import 'package:readly/core/utils/assets.dart';
import 'package:readly/core/utils/styles.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),

                image: const DecorationImage(
                  image: AssetImage(AssetsData.book),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Harry Potter and the Goblet of Fire ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyles20.copyWith(fontFamily: kGtSectraFine),
                ),
              ),
               const SizedBox(height: 3,),
              Text('J.K Rowling' ,style: Styles.textStyles14,) ,
               const SizedBox(height: 3,),
              Row(children: [
                Text('19.99\$',style: Styles.textStyles20.copyWith(fontWeight: FontWeight.bold),),
              ],)
            ],
          ),
        ],
      ),
    );
  }
}
