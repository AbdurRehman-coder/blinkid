
import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/constants/images_path.dart';
import 'package:flutter/material.dart';

import '../../resources/constants/text_styles.dart';

class ExpressProductCard extends StatelessWidget {
  String? image;
  ExpressProductCard({this.image});
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.white,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
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
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                          'Little Star Silicon Finger Toothbrush White',
                          style: AppTextStyle.gilroyLight.copyWith(
                              fontSize: 14,
                              color: Color(0xFF0D313B),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Rs.4795.00',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 8),
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
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                color: AppColors.primaryRedColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                '-23%',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
