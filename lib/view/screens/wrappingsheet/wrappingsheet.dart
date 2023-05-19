
import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/view/screens/mart/mart_categories.dart';
import 'package:blinkid/view/widgets/custom_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/constants/images_path.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/utils/routes.dart';
import '../../widgets/product_card_widget.dart';
import '../express/browse_categories.dart';

class FashionWrappingSheet extends StatefulWidget {
  const FashionWrappingSheet({Key? key}) : super(key: key);

  @override
  State<FashionWrappingSheet> createState() => _FashionWrappingSheetState();
}

class _FashionWrappingSheetState extends State<FashionWrappingSheet> {
  TextEditingController _searchController = TextEditingController();

  final List<ImageCard> imageCards = [
    ImageCard(imageAsset: AppImages.fashionCatImage, name: 'Fashion'),
    ImageCard(imageAsset: AppImages.gearCatImage, name: 'Gear'),
    ImageCard(imageAsset: AppImages.feadingCatImage, name: 'Feading'),
    ImageCard(imageAsset: AppImages.bathCatImage, name: 'Bath'),
    ImageCard(imageAsset: AppImages.safetyCatImage, name: 'Safety'),
    ImageCard(imageAsset: AppImages.toysCatImage, name: 'Toys'),
    ImageCard(imageAsset: AppImages.diaperingCatImage, name: 'Diapering'),
    ImageCard(imageAsset: AppImages.nursaryCatImage, name: 'Nursary'),
    ImageCard(imageAsset: AppImages.birthdayCatImage, name: 'Birthday'),
    ImageCard(imageAsset: AppImages.momsCatImage, name: 'Moms'),
    ImageCard(imageAsset: AppImages.schoolCatImage, name: 'School'),
    ImageCard(imageAsset: AppImages.footwearCatImage, name: 'Footwear'),
  ];

  bool isBrowseCategoriesShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.whiteLightBackground,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 14,
                  ),

                  TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.7),
                      hintText: 'Search entire store here',
                      hintStyle: TextStyle(
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: IconButton(
                        onPressed: () {
                          // handle search button on pressed event here
                        },
                        icon: Icon(
                          Icons.search,
                          size: 18,
                        ),
                      ),
                      // suffixIcon: IconButton(
                      //   onPressed: () {
                      //     // handle search button on pressed event here
                      //   },
                      //   icon: Icon(Icons.keyboard_arrow_down, size: 18,),
                      // ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),

                ],
              ),
            ),


            Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(children: [
                        Text("Sort by",style: AppTextStyle.gilroyLight.copyWith(
                      fontSize: 14,
                      color: AppColors.primaryBlackColor,
                          fontWeight: FontWeight.w700
                    ),),
                        const ImageIcon(AssetImage(AppImages.verticalsquare))
                      ],),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Row(children: [
                                Text("View",style: AppTextStyle.gilroyLight.copyWith(
                                    fontSize: 14,
                                    color: AppColors.primaryBlackColor,
                                    fontWeight: FontWeight.w700
                                ),),
                                const SizedBox(width: 3,),
                                const ImageIcon(
                                    AssetImage(AppImages.squarebox),
                                size: 14,),
                              ],),
                            const VerticalDivider(),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, Routes.categories);
                                },
                                child: Row(
                                  children: [
                                  Text("Filter",style: AppTextStyle.gilroyLight.copyWith(
                                      fontSize: 14,
                                      color: AppColors.primaryBlackColor,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  const SizedBox(width: 3,),
                                  const ImageIcon(AssetImage(AppImages.filter),size: 14,)
                                ],),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(children: [
                          SizedBox(height: 12,),
                          Expanded(
                              child: ExpressProductCard(image: AppImages.pinkbag,)),
                          Expanded(
                              child: ExpressProductCard(image: AppImages.camaflougebag,)),
                        ],),
                        Row(children: [
                          SizedBox(height: 12,),
                          Expanded(
                              child: ExpressProductCard(image: AppImages.camaflougebag,)),
                          Expanded(
                              child: ExpressProductCard(image: AppImages.camaflougebag,)),
                        ],),

                        Row(children: [
                          SizedBox(height: 12,),
                          Expanded(
                              child: ExpressProductCard(image: AppImages.camaflougebag,)),
                          Expanded(
                              child: ExpressProductCard(image: AppImages.camaflougebag,)),
                        ],),
                      ],
                    ),
                  )


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCard {
  final String imageAsset;
  final String name;

  ImageCard({required this.imageAsset, required this.name});
}
