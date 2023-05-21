import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/constants/images_path.dart';
import 'package:blinkid/resources/utils/routes.dart';
import 'package:flutter/material.dart';

import '../../../resources/constants/text_styles.dart';

class InitialHomeScreen extends StatefulWidget {
  const InitialHomeScreen({Key? key}) : super(key: key);

  @override
  _InitialHomeScreenState createState() => _InitialHomeScreenState();
}

class _InitialHomeScreenState extends State<InitialHomeScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.getGradientColor(),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14,),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(width: 5,),
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.7),
                        hintText: '8502 Preston Inglewood',
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: IconButton(
                          onPressed: () {
                            // handle search button on pressed event here
                          },
                          icon: Icon(Icons.location_on_outlined, size: 18,),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            // handle search button on pressed event here
                          },
                          icon: Icon(Icons.keyboard_arrow_down, size: 18,),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24,),
              Text('Hi👋What are you looking for?',
                style: AppTextStyle.gilroyBold.copyWith(
                  fontSize: 18,
                ),),
              SizedBox(height: 18,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, Routes.expressHomeScreen);
                },
                child: Image.asset(
                  AppImages.blinkidExpressHomeImage,
                  width: double.infinity,
                  height: 150,
                ),
              ),
              SizedBox(height: 8,),
              InkWell(
                onTap: (){
                  // Navigator.pushNamed(context, Routes.martHomeScreen);
                },
                child: Image.asset(
                  AppImages.blinkidMartHomeImage,
                  width: double.infinity,
                  height: 150,
                ),
              ),

          ],
          ),
        ),
      ),
    );
  }
}
