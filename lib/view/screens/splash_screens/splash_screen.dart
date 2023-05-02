

import 'package:blinkid/resources/constants/images_path.dart';
import 'package:blinkid/resources/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), (){
      Navigator.pushNamed(context, Routes.locationAccessScreen);
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
        ),
        child: Image.asset(AppImages.splashImage,  fit: BoxFit.cover,),
      ),
    );
  }
}
