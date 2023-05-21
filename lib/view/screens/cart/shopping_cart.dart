import 'package:blinkid/resources/constants/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../resources/constants/app_colors.dart';
import '../../../resources/constants/images_path.dart';
import '../../widgets/cart/cartitem.dart';
import '../../widgets/rating/ratingcontainer.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCart();
}

class _ShoppingCart extends State<ShoppingCart> {
  int productcount=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.keyboard_backspace),
            centerTitle: true,
            title: Text(
              "Shopping cart",
              style: AppTextStyle.gilroyLight
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w900),
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ImageIcon(AssetImage(AppImages.vanIcon,),size: 17,),
                            SizedBox(width: 5,),
                            Text("Blinkid express",style: AppTextStyle.gilroyLight.copyWith(
                                fontSize: 16,
                                color: AppColors.primaryBlueColor,
                                fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                        Text("Delivery Rs 49",style: AppTextStyle.gilroyLight.copyWith(
                            fontSize: 16,
                            color: AppColors.greyText
                        ),)
                      ],
                    ),
                    SizedBox(height: 25,),
                    CartItem(),
                    SizedBox(height: 25,),
                    CartItem(),
                    Container(
                      color: AppColors.greyContainerBackground,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.access_time,color:AppColors.greyText ,),
                            SizedBox(width: 5,),
                            Text("Expected delivery within 24hrs",style: AppTextStyle.gilroyLight.copyWith(
                                fontSize: 16,
                                color: AppColors.greyText
                            ),)],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [

                          Text("Blinkid express",style: AppTextStyle.gilroyLight.copyWith(
                              fontSize: 16,
                              color: AppColors.primaryBlueColor,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    ),
                    CartItem(),

                    Container(
                      color: AppColors.greyContainerBackground,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.access_time,color:AppColors.greyText ,),
                            SizedBox(width: 5,),
                            Text("Expected delivery within 24hrs",style: AppTextStyle.gilroyLight.copyWith(
                                fontSize: 16,
                                color: AppColors.greyText
                            ),)],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    CartItem(),
                    CartItem(),
                    CartItem(),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,

                child: Container(color: Colors.white,
                  // width: MediaQuery.of(context).size.width*0.95,
                  height: 100,
                  child: Column(
                    children: [
                      Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                        children: [
                  Text(
                  "Total",
                    style: AppTextStyle.gilroyLight
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w900,color: Colors.black),
                  ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text("Rs.2,795.00",style:AppTextStyle.gilroyLight
                                .copyWith(fontSize: 17, fontWeight: FontWeight.w600,color: AppColors.primaryRedColor),),
                          ),
                        ],
                      ),
                      SizedBox(height: 7,),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              AppColors.primaryBlueColor),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          /// Navigate to login screen
                          // Navigator.pushNamed(context, Routes.initialHomeScreen);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Proceed to Checkout',
                                style: AppTextStyle.gilroyLight.copyWith(fontSize: 15,color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
