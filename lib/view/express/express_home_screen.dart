
import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/constants/images_path.dart';
import '../../resources/constants/text_styles.dart';

class ExpressHomeScreen extends StatefulWidget {
  const ExpressHomeScreen({Key? key}) : super(key: key);

  @override
  State<ExpressHomeScreen> createState() => _ExpressHomeScreenState();
}

class _ExpressHomeScreenState extends State<ExpressHomeScreen> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
        child: Column(
          children: [
            SizedBox(height: 14,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_outlined, color: AppColors.primaryBlackColor,),
                    SizedBox(width: 10,),
                    Text('Blinkid',
                      style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 18,
                          color: AppColors.primaryBlueColor
                      ),),
                  ],
                ),

                Column(
                  children: [
                    Text('Delivery',
                      style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 12,
                        color: AppColors.primaryBlackColor
                      ),),
                    Text('Same Day',
                      style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 12,
                        color: AppColors.primaryRedColor
                      ),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16,),
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
                  icon: Icon(Icons.search, size: 18,),
                ),
                // suffixIcon: IconButton(
                //   onPressed: () {
                //     // handle search button on pressed event here
                //   },
                //   icon: Icon(Icons.keyboard_arrow_down, size: 18,),
                // ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.black12
                  ),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              child: Image.asset(
                AppImages.cuddleMegaSaleImage,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 24,),
            Text('working on...',
              style: AppTextStyle.gilroyBold.copyWith(
                fontSize: 22,
              ),),
          ],
        ),
      ),
    );
  }
}
