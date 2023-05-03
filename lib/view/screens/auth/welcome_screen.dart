
import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/constants/images_path.dart';
import 'package:blinkid/resources/constants/text_styles.dart';
import 'package:blinkid/resources/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(

        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
            height: size.height * 0.68,
                  child: Image.asset(AppImages.welcomScreenImage, fit: BoxFit.cover,)),

              SizedBox(height: 12,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Welcome',
                    style: AppTextStyle.gilroyBold.copyWith(
                      fontSize: 25,
                    )),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                    " 'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!'",
                    style: AppTextStyle.gilroyLight.copyWith(
                      fontSize: 14,
                      color: AppColors.grayTextColor,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(height: 16,),
              SizedBox(
                height: size.height * 0.07,
                width: size.width * 0.9,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.primaryBlueColor),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    /// Navigate to login screen
                    Navigator.pushNamed(context, Routes.loginScreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Get Started',
                        style: AppTextStyle.gilroyLight.copyWith(fontSize: 15),),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12,),


            ],
          ),
        ),
      ),
    );
  }
}
