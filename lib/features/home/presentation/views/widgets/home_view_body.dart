import 'package:flutter/material.dart';
import 'package:readly/core/utils/styles.dart';
import 'package:readly/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:readly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:readly/features/home/presentation/views/widgets/featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:const [
         CustomAppBar(),
         FeatureListViewItems(),
          SizedBox(height: 50,),
         Text('Best Seller' ,style: Styles.textStyles18,),
          SizedBox(height: 20,),
          BestSellerListviewItem(),
      
        ]
      ),
    );
  }
}

