

import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/constants/images_path.dart';
import 'package:blinkid/view/widgets/express_product_card_widget.dart';
import 'package:blinkid/view/widgets/mart_product_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../resources/constants/text_styles.dart';

class MartCategoriesScreen extends StatelessWidget {
  const MartCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        /// =========== Get Ready For Eid ============== ///
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Get Ready For Eid',
                    style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  Icon(Icons.arrow_forward_sharp, color: Colors.black,),
                ],
              ),
              SizedBox(height: size.height * 0.02,),

              Container(
                height: size.height * 0.36,
                // color: Colors.amberAccent,
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                    itemBuilder: (context, index){
                    return Container(
                      width: size.width * 0.48,
                        child: MartProductCard(image: AppImages.pinkBagImage,));

                    },
                ),
              ),
            ],
          ),
        ),

        /// ===========Eid Essential============== ///
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Eid Essential',
                    style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  Icon(Icons.arrow_forward_sharp, color: Colors.black,),
                ],
              ),
              SizedBox(height: size.height * 0.02,),

              Container(
                height: size.height * 0.36,
                // color: Colors.amberAccent,
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return Container(
                        width: size.width * 0.48,
                        child: MartProductCard(image: AppImages.pinkBagImage,));

                  },
                ),
              ),
            ],
          ),
        ),

        /// =========== Under 299 ============== ///
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Under 299',
                    style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  Icon(Icons.arrow_forward_sharp, color: Colors.black,),
                ],
              ),
              SizedBox(height: size.height * 0.02,),

              Container(
                height: size.height * 0.36,
                // color: Colors.amberAccent,
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return Container(
                        width: size.width * 0.48,
                        child: MartProductCard(image: AppImages.pinkBagImage,));

                  },
                ),
              ),
            ],
          ),
        ),

        /// =========== Hungry ============== ///
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hungry?',
                    style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  Icon(Icons.arrow_forward_sharp, color: Colors.black,),
                ],
              ),
              SizedBox(height: size.height * 0.02,),

              Container(
                height: size.height * 0.36,
                // color: Colors.amberAccent,
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return Container(
                        width: size.width * 0.48,
                        child: MartProductCard(image: AppImages.pinkBagImage,));

                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
