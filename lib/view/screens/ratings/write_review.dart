import 'package:blinkid/resources/constants/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../resources/constants/app_colors.dart';
import '../../../resources/constants/images_path.dart';
import '../../../resources/utils/routes.dart';
import '../../widgets/rating/ratingcontainer.dart';

class WriteReviews extends StatefulWidget {
  const WriteReviews({Key? key}) : super(key: key);

  @override
  State<WriteReviews> createState() => _WriteReviews();
}

class _WriteReviews extends State<WriteReviews> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            leading: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.keyboard_backspace)),
            centerTitle: true,
            title: Text(
              "Write Review",
              style: AppTextStyle.gilroyLight
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w900),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(children: [
        Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyContainerBackground,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Image(
                      image: AssetImage(AppImages.pinkAndWhite),
                      width: 63,
                      height: 69,
                    )),
              ),
              SizedBox(width: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      Container(
                        // color: Colors.amberAccent,
                          width: MediaQuery.of(context).size.width*0.58,
                          child: Text("Little Sparks Baby Diaper Bag (Waterproof) Unicorn Pink"),),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: List.generate(5, (i) => Icon(Icons.star_rate,color: Colors.grey.shade200,)).toList(),
                  ),
                  SizedBox(height: 10,),

                ],
              ),


            ],
        ),
              SizedBox(height: 21,),
              TextField(
                // controller: _searchController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                  hintText: '  Heading of your review',
                  hintStyle: TextStyle(

                    fontSize: 14,
                  ),
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey.shade50,width: 0.1),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                maxLines: 8,

                // controller: _searchController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                  hintText: '  Write your review',
                  hintStyle: TextStyle(

                    fontSize: 14,

                  ),

                  contentPadding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey.shade50,width: 0.1),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyContainerBackground,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Image(
                        image: AssetImage(AppImages.pinkBagImage),
                        width: 19,
                        height: 19,
                      )),
                ),
              ),

              SizedBox(height: size.height * 0.1,),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.grey.shade200),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Submit Review',
                      style: AppTextStyle.gilroyLight.copyWith(fontSize: 15,color: Colors.grey),
                    ),
                  ],
                ),
              ),
        ],),
          ),
        ));
  }
}
