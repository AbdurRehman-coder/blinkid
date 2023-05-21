
import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/view/screens/mart/mart_categories.dart';
import 'package:blinkid/view/widgets/custom_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/constants/images_path.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/utils/routes.dart';
import '../express/browse_categories.dart';

class MartHomeScreen extends StatefulWidget {
  const MartHomeScreen({Key? key}) : super(key: key);

  @override
  State<MartHomeScreen> createState() => _MartHomeScreenState();
}

class _MartHomeScreenState extends State<MartHomeScreen> {
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
      // backgroundColor: Colors.white30,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_outlined,
                              color: AppColors.primaryBlackColor,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Blinkid Mart',
                            style: AppTextStyle.gilroyLight
                                .copyWith(fontSize: 18, color: AppColors.primaryRedColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Delivery',
                            style: AppTextStyle.gilroyLight
                                .copyWith(fontSize: 12,
                                color: AppColors.primaryBlackColor,
                                fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            '72 Hours',
                            style: AppTextStyle.gilroyLight
                                .copyWith(fontSize: 12,
                                color: AppColors.primaryBlueColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
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
                  Container(
                    child: Image.asset(
                      AppImages.cuddleMegaSaleImage,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),


            Container(
              color: AppColors.whiteLightBackground,
              // color: Colors.white12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shop By Categories ',
                          style: AppTextStyle.gilroyBold.copyWith(
                            fontSize: 18,
                          ),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16,),
                    child: GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: imageCards.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(

                           onTap: (){
                             Navigator.pushNamed(context, Routes.fashionWrappingSheet);
                           },


                          child: Card(
                            color: Colors.white,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    imageCards[index].imageAsset,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(height: 5,),
                                  Text(imageCards[index].name,
                                    style: AppTextStyle.gilroyLight.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ]),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 35,),

                  MartCategoriesScreen(),

                  SizedBox(height: 30,),
                  isBrowseCategoriesShow == false
                      ? Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16,),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Couldn’t find your product?',
                          style: AppTextStyle.gilroyLight.copyWith(
                              fontSize: 18,
                              color: AppColors.primaryBlackColor
                          ),),
                        SizedBox(height: 08,),
                        ElevatedButton(
                          onPressed: () {
                            // Add your button's functionality here
                            // setState(() {
                            //   isBrowseCategoriesShow = true;
                            // });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text(
                            'Browse Categories',
                            style: AppTextStyle.gilroyLight.copyWith(
                                fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                      : Container(),
                  SizedBox(height: 12,),

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
