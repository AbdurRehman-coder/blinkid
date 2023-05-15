

import 'package:blinkid/resources/constants/images_path.dart';
import 'package:blinkid/view/widgets/product_card_widget.dart';
import 'package:flutter/cupertino.dart';

class BrowseCategoriesScreen extends StatelessWidget {
  const BrowseCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Expanded(
              child: ProductCard(image: AppImages.bagImage,)),
          Expanded(
              child: ProductCard(image: AppImages.headphoneImage,)),
        ],),

        // Row(
        //   children: [
        //   ProductCard(image: AppImages.bagImage,),
        //   ProductCard(image: AppImages.headphoneImage,),
        //   ],
        // ),
      ],
    );
  }
}
