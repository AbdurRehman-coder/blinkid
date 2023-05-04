//
// import 'package:blinkid/resources/constants/app_colors.dart';
// import 'package:blinkid/resources/constants/images_path.dart';
// import 'package:blinkid/resources/constants/text_styles.dart';
// import 'package:blinkid/resources/utils/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class WelcomeScreen extends StatefulWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<WelcomeScreen> createState() => _WelcomeScreenState();
// }
//
// class _WelcomeScreenState extends State<WelcomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Padding(
//
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: double.infinity,
//             height: size.height * 0.68,
//                   child: Image.asset(AppImages.welcomScreenImage, fit: BoxFit.cover,)),
//
//               SizedBox(height: 12,),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 child: Text('Welcome',
//                     style: AppTextStyle.gilroyBold.copyWith(
//                       fontSize: 25,
//                     )),
//               ),
//               SizedBox(height: 12,),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 40),
//                 child: Text(
//                     " 'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!'",
//                     style: AppTextStyle.gilroyLight.copyWith(
//                       fontSize: 14,
//                       color: AppColors.grayTextColor,
//                       fontWeight: FontWeight.bold,
//                     )),
//               ),
//               SizedBox(height: 16,),
//               SizedBox(
//                 height: size.height * 0.07,
//                 width: size.width * 0.9,
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(AppColors.primaryBlueColor),
//                     foregroundColor: MaterialStateProperty.all(Colors.white),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                     ),
//                   ),
//                   onPressed: () {
//                     /// Navigate to login screen
//                     Navigator.pushNamed(context, Routes.loginScreen);
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('Get Started',
//                         style: AppTextStyle.gilroyLight.copyWith(fontSize: 15),),
//                     ],
//                   ),
//                 ),
//               ),
//
//               SizedBox(height: 12,),
//
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



///TODO: Fade-in-animation
// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:blinkid/resources/constants/app_colors.dart';
// import 'package:blinkid/resources/constants/images_path.dart';
// import 'package:blinkid/resources/constants/text_styles.dart';
// import 'package:blinkid/resources/utils/routes.dart';
//
// class WelcomeScreen extends StatefulWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<WelcomeScreen> createState() => _WelcomeScreenState();
// }
//
// class _WelcomeScreenState extends State<WelcomeScreen>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;
//   late final Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 2),
//     );
//
//     _animation = Tween<double>(
//       begin: 0,
//       end: 1,
//     ).animate(_controller);
//
//     _controller.forward();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FadeTransition(
//                 opacity: _animation,
//                 child: SizedBox(
//                   width: double.infinity,
//                   height: size.height * 0.68,
//                   child: Image.asset(
//                     AppImages.welcomScreenImage,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 12,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 child: Text('Welcome',
//                     style: AppTextStyle.gilroyBold.copyWith(
//                       fontSize: 25,
//                     )),
//               ),
//               SizedBox(
//                 height: 12,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 40),
//                 child: Text(
//                     " 'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!'",
//                     style: AppTextStyle.gilroyLight.copyWith(
//                       fontSize: 14,
//                       color: AppColors.grayTextColor,
//                       fontWeight: FontWeight.bold,
//                     )),
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               SizedBox(
//                 height: size.height * 0.07,
//                 width: size.width * 0.9,
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     backgroundColor:
//                     MaterialStateProperty.all(AppColors.primaryBlueColor),
//                     foregroundColor: MaterialStateProperty.all(Colors.white),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                     ),
//                   ),
//                   onPressed: () {
//                     /// Navigate to login screen
//                     Navigator.pushNamed(context, Routes.loginScreen);
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Get Started',
//                         style: AppTextStyle.gilroyLight.copyWith(fontSize: 15),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 12,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


/// TODO: Slide Animation

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/constants/images_path.dart';
import 'package:blinkid/resources/constants/text_styles.dart';
import 'package:blinkid/resources/utils/routes.dart';

import 'package:flutter/material.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              FadeTransition(
                opacity: _fadeInAnimation,
                child: SizedBox(
                  width: double.infinity,
                  height: size.height * 0.68,
                  child: Image.asset(
                    AppImages.welcomScreenImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SlideTransition(
                position: _slideAnimation,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Welcome',
                      style: AppTextStyle.gilroyBold.copyWith(
                        fontSize: 25,
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SlideTransition(
                position: _slideAnimation,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                      " 'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!'",
                      style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 14,
                        color: AppColors.grayTextColor,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SlideTransition(
                position: _slideAnimation,
                child: SizedBox(
                  height: size.height * 0.07,
                  width: size.width * 0.9,
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
                      Navigator.pushNamed(context, Routes.loginScreen);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get Started',
                          style: AppTextStyle.gilroyLight.copyWith(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




