import 'package:flutter/material.dart';

import '../../../resources/constants/app_colors.dart';
import '../../../resources/constants/images_path.dart';
import '../../../resources/constants/text_styles.dart';
class CartItem extends StatefulWidget {
   CartItem({Key? key}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
int productcount=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.greyContainerBackground,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Image(
                    image: AssetImage(AppImages.pinkBagImage),
                    width: 63,
                    height: 69,
                  )),
            ),
            SizedBox(width: 12,),
            Expanded(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(

                          child: Text("Little Sparks Baby...",style:AppTextStyle.gilroyLight
                              .copyWith(fontSize: 17, fontWeight: FontWeight.w600),)),
                      const Icon(Icons.delete_outlined,color: AppColors.primaryRedColor,)

                    ],
                  ),

                  SizedBox(height: 1,),
                  Text("Diaper Bag",style:AppTextStyle.gilroyLight
                      .copyWith(fontSize: 13, fontWeight: FontWeight.w700,color: AppColors.greyText),),

                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rs.2,795.00",style:AppTextStyle.gilroyLight
                          .copyWith(fontSize: 17, fontWeight: FontWeight.w600,color: AppColors.primaryRedColor),),

                      Row(
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
                      )

                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
        Divider(),
      ],
    );

  }
}
