import 'package:flutter/material.dart';

import '../../../resources/constants/app_colors.dart';
class MainCategories extends StatefulWidget {
  List<String>? maincategories;
   MainCategories({Key? key,this.maincategories}) : super(key: key);

  @override
  State<MainCategories> createState() => _MainCategoriesState();
}

class _MainCategoriesState extends State<MainCategories> {
  int selected=0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        primary: false
        ,itemCount:widget.maincategories?.length
        ,scrollDirection: Axis.horizontal
        ,itemBuilder: (context,index){
      return GestureDetector(
        onTap: (){
          selected=index;
          setState(() {
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Center(
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),
                color:index==selected? AppColors.primaryBlueColor:Colors.transparent,),
              height: 47,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Center(child: Text(widget.maincategories![index],style: TextStyle(fontWeight: FontWeight.w700,color:index==selected?Colors.white:Colors.black ),)),
              ),

            ),
          ),
        ),
      );

    });
  }
}
