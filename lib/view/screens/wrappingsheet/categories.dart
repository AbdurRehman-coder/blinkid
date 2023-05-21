import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/view/screens/mart/mart_categories.dart';
import 'package:blinkid/view/widgets/categories/maincategories.dart';
import 'package:blinkid/view/widgets/custom_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../resources/constants/images_path.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/utils/routes.dart';
import '../../widgets/categories/subcategories.dart';
import '../express/browse_categories.dart';
import '../express/express_home_screen.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _Categories();
}

class _Categories extends State<Categories> with TickerProviderStateMixin {
  TextEditingController _searchController = TextEditingController();

  final List<dynamic> imageCards = [
    {"assetimage": AppImages.violetNicker, "name": 'The Nest Swaddle Sheet'},
    {"assetimage": AppImages.colorNicker, "name": 'The Nest Swaddle Sheet'},
    {"assetimage": AppImages.whiteNicker, "name": 'The Nest Swaddle Sheet'},
    {"assetimage": AppImages.colorNicker, "name": 'The Nest Swaddle Sheet'},
    {"assetimage": AppImages.colorNicker, "name": 'The Nest Swaddle Sheet'},
  ];
  final List<String> maincategories = [
    "Fashion",
    "Gear",
    "Feeding",
    "Bath",
    "Safe"
  ];
  final List<String> subcategories = [
    "Blanket",
    "Swaddles",
    "Wrapping Sheets",
    "Towels",
    "Shirts"
  ];
  int productcount = 0;

  late final TabController _tabController =
      TabController(length: 7, vsync: this);
  int selected = 0;
  bool isBrowseCategoriesShow = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.menu),
                        Text(
                          "Categories",
                          style: AppTextStyle.gilroyLight.copyWith(
                              fontSize: 18,
                              color: AppColors.primaryBlackColor,
                              fontWeight: FontWeight.w800),
                        ),
                        const ImageIcon(AssetImage(AppImages.searchIcon)),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                      color: AppColors.greyContainerBackground,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: MainCategories(
                        maincategories: maincategories,
                      )),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                  child: Container(
                      height: 30,
                      child: SubCategories(
                        subcategories: subcategories,
                      ))),
              Expanded(
                child: ListView.builder(
                    itemCount: imageCards.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 20),
                        child: Material(
                          elevation: 0.5,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                            AppColors.greyContainerBackground,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Image(
                                          image: AssetImage(
                                              imageCards[index]["assetimage"]),
                                          width: 63,
                                          height: 69,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 150,
                                          child: Text(
                                            imageCards[index]["name"],
                                            style: AppTextStyle.gilroyLight
                                                .copyWith(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Rs.4795.00",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color:
                                                          AppColors.greyText),
                                                ),
                                                Text(
                                                  "Rs.3000.00",
                                                  style:
                                                      TextStyle(fontSize: 15),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 14),
                                              child: Row(
                                                children: [
                                                  Visibility(
                                                    visible: productcount>0,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        // onPressed();
                                                        productcount--;
                                                        setState(() {

                                                        });
                                                      },
                                                      child: Container(
                                                        width: 28,
                                                        height: 28,
                                                        decoration: BoxDecoration(
                                                          color: Colors
                                                              .grey.shade200,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),

                                                          // shape: BoxShape.circle,
                                                        ),
                                                        alignment:
                                                            Alignment.center,
                                                        child: Center(
                                                          child: Icon(
                                                            Icons.remove,
                                                            color: Colors.grey,
                                                            size: 25,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(productcount.toString()),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      productcount++;
                                                      setState(() {

                                                      });
                                                    },
                                                    child: Container(
                                                      width: 28,
                                                      height: 28,
                                                      decoration: BoxDecoration(
                                                        color: Colors.blue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),

                                                        // shape: BoxShape.circle,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Center(
                                                        child: Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                          size: 25,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
          Positioned(
            bottom: 18,
            right: MediaQuery.of(context).size.width * 0.37,
            child: Container(
              height: size.height * 0.07,
              width: size.height * 0.18,
              decoration: BoxDecoration(
                  color: AppColors.primaryRedColor,
                  borderRadius: BorderRadius.circular(85)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.local_grocery_store,
                      color: Colors.white,
                    ),
                    Text(
                      "Rs 1,550",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
