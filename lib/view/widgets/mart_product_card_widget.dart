


import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/constants/images_path.dart';
import 'package:flutter/material.dart';

import '../../resources/constants/text_styles.dart';

class MartProductCard extends StatelessWidget {
  String? image;
  MartProductCard({this.image});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5),
      child: Container(
        // color: Colors.white,
        color: Colors.white30,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(08)
                    // image: DecorationImage(
                    //   image: AssetImage(image!),
                    //   fit: BoxFit.cover,
                    // ),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Center(child: Image.asset(image!)),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.loose,
                          child: Text(
                            'Colorland Bag Backpack Pink',
                            style: AppTextStyle.gilroyLight.copyWith(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [

                            Text(
                              'Rs.3695.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            // onPressed();
                          },
                          child: Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5),

                              // shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
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
                  ),
                ),
              ],
            ),
            // Positioned(
            //   top: 8,
            //   left: 8,
            //   child: Container(
            //     padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            //     decoration: BoxDecoration(
            //       color: AppColors.primaryRedColor.withOpacity(0.8),
            //       borderRadius: BorderRadius.circular(5),
            //     ),
            //     child: Text(
            //       '-23%',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontWeight: FontWeight.normal,
            //         fontSize: 12,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );

  }
}
