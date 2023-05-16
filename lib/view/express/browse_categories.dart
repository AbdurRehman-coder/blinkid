

import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/constants/images_path.dart';
import 'package:blinkid/view/widgets/product_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/constants/text_styles.dart';

class BrowseCategoriesScreen extends StatelessWidget {
  const BrowseCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// =========== Best Seller ============== ///
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Best Seller',
                    style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'See more ',
                    style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 13,
                        color: AppColors.primaryBlueColor
                    ),
                  ),
                ],
              ),
              SizedBox(height: 08,),

              Row(children: [
                SizedBox(height: 12,),
                Expanded(
                    child: ProductCard(image: AppImages.bagImage,)),
                Expanded(
                    child: ProductCard(image: AppImages.headphoneImage,)),
              ],),
            ],
          ),
        ),


        /// =========== New Arrival ============== ///
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' New Arrivals',
                    style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'See more ',
                    style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 13,
                        color: AppColors.primaryBlueColor
                    ),
                  ),
                ],
              ),
              SizedBox(height: 08,),

              Row(children: [
                SizedBox(height: 12,),
                Expanded(
                    child: ProductCard(image: AppImages.bagImage,)),
                Expanded(
                    child: ProductCard(image: AppImages.headphoneImage,)),
              ],),
            ],
          ),
        ),


        /// =========== Shop By Brand ============== ///
        Container(
          color: AppColors.whiteLightBackground,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shop By Brands ',
                      style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),

                SizedBox(height: 5,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImages.babyganicsImage, scale: 3.8,),
                    Image.asset(AppImages.babyMagicImage, scale: 3.8,),
                    Image.asset(AppImages.aventImage, scale: 3.8,),
                  ],
                ),
                const SizedBox(height: 10,),

              ],
            ),
          ),
        ),
        /// =========== New Arrival ============== ///
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' New Arrivals',
                    style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'See more ',
                    style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 13,
                        color: AppColors.primaryBlueColor
                    ),
                  ),
                ],
              ),
              SizedBox(height: 08,),
              Row(children: [
                SizedBox(height: 12,),
                Expanded(
                    child: ProductCard(image: AppImages.bagImage,)),
                Expanded(
                    child: ProductCard(image: AppImages.headphoneImage,)),
              ],),

              SizedBox(height: 08,),
              Row(children: [
                SizedBox(height: 12,),
                Expanded(
                    child: ProductCard(image: AppImages.bagImage,)),
                Expanded(
                    child: ProductCard(image: AppImages.headphoneImage,)),
              ],),
            ],
          ),
        ),

      ],
    );
  }
}
