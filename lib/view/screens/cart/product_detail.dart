import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/constants/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../resources/constants/images_path.dart';
import '../../widgets/express_product_card_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List<String> size=["Small","Medium","Large","X-Large"];
  List<String> color=["White","Pink","Black","Blue"];
  int selected=0;
  int selectedColor=0;
  int productcount=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_back_rounded),
                      Icon(Icons.share_outlined)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        color: AppColors.pinkContainer,
                        height: 225,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 94, vertical: 14),
                          child: Image(
                            height: 146,
                            image: AssetImage(AppImages.pinkBagImage),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          color: Colors.white,
                          width: 50,
                          height: 30,
                          child: Center(child: Text("1/5")),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Little Sparks Baby",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),),
                      Text("Rs.3,595.00",style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColors.greyText,

                      ),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Diaper Bag (Waterproof)",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),),
                      Text("Rs.2,795.00",style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryRedColor,

                      ),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Unicorn Pink",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                   color: Colors.lightGreen,
                 ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 8),
                    child: Text(
                      "babyganics",style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Size",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w800
                      ),),
                      Container(
                        color: AppColors.greyContainerBackground,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(Icons.keyboard_arrow_up_outlined),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 30,
                    child: ListView.builder(

                      scrollDirection: Axis.horizontal,
                        itemCount: size.length,
                        itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            selected=index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: selected==index?AppColors.primaryRedColor:AppColors.greyContainerBackground)
                            ),
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7,vertical: 3),
                                child: Center(child: Text(size[index],style: AppTextStyle.gilroyLight.copyWith(
                                    fontWeight: FontWeight.w600,
                                  color: selected==index?Colors.black: Colors.grey,
                                ),))),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Color",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w800
                      ),),
                      Container(
                        color: AppColors.greyContainerBackground,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(Icons.keyboard_arrow_up_outlined),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 30,
                    child: ListView.builder(

                        scrollDirection: Axis.horizontal,
                        itemCount: color.length,
                        itemBuilder: (context,index){
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedColor=index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: selectedColor==index?AppColors.primaryRedColor:AppColors.greyContainerBackground)
                                ),
                                child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 7,vertical: 3),
                                    child: Center(child: Text(color[index],style: AppTextStyle.gilroyLight.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: selectedColor==index?Colors.black: Colors.grey,
                                    ),))),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Reviews",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),),
                      Container(
                        color: AppColors.greyContainerBackground,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(Icons.keyboard_arrow_right),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 7,),
                  Row(
                    children: [
                      Row(
                        children:  List.generate(4, (i) => Icon(Icons.star_rate,color: Colors.deepOrangeAccent,)).toList(),
                      ),
                      Image(image: AssetImage(AppImages.reviewpeople))
                    ],
                  ),
                  SizedBox(height: 7,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Product Info",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),),
                      Container(
                        color: AppColors.greyContainerBackground,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(Icons.keyboard_arrow_up),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text("Availability  ",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey
                      ),),
                      Expanded(child:Divider(),),

                      Text("  In Stock",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        color: Colors.green
                      ),)

                    ],
                  ),

                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text("Brand  ",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey
                      ),),
                      Expanded(child:Divider(),),

                      Text("  Little Sparks",style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,

                      ),)

                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text("SKU#  ",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey
                      ),),
                      Expanded(child:Divider(),),

                      Text("  B075004000610006",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,

                      ),)

                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text("Type  ",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey
                      ),),
                      Expanded(child:Divider(),),

                      Text("  Diapers Backpack",style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,

                      ),)

                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Description",style: AppTextStyle.gilroyLight.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),),
                      Container(
                        color: AppColors.greyContainerBackground,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(Icons.keyboard_arrow_up),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 3,),
                  Text("Diaper bag is spacious enough to accomodate a number of your baby supplies as it has multiple pockets. You can put important baby care items in an organized fashion so that you can fetch them effortlessly when needed, without having to turn the bag upside down.",style: AppTextStyle.gilroyLight.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Center(
                      child: Text("For You",style: AppTextStyle.gilroyLight.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: 16

                      ),),
                    ),
                  ),
                  Row(children: [
                    SizedBox(height: 12,),
                    Expanded(
                        child: ExpressProductCard(image: AppImages.pinkBagImage,)),
                    Expanded(
                        child: ExpressProductCard(image: AppImages.camaflougebag,)),
                  ],),
                  Row(children: [
                    SizedBox(height: 12,),
                    Expanded(
                        child: ExpressProductCard(image: AppImages.pinkBagImage,)),
                    Expanded(
                        child: ExpressProductCard(image: AppImages.camaflougebag,)),
                  ],),


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
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                        children: [
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
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text("Total: Rs 5,590",style:AppTextStyle.gilroyLight
                                .copyWith(fontSize: 17, fontWeight: FontWeight.w600),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: AppColors.greyContainerBackground,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(Icons.heart_broken_sharp),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: ElevatedButton(
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
                                    'Add to cart',
                                    style: AppTextStyle.gilroyLight.copyWith(fontSize: 15,color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
