
import 'dart:io';

import 'package:blinkid/resources/constants/images_path.dart';
import 'package:blinkid/resources/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Future.delayed(Duration(seconds: 5), (){
//       Navigator.pushNamed(context, Routes.locationAccessScreen);
//     });
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//         ),
//         child: Image.asset(AppImages.splashImage,  fit: BoxFit.cover,),
//       ),
//     );
//   }
// }



/// Scale Animation
// class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 4),
//       vsync: this,
//     )..forward();
//     _animation = Tween<double>(
//       begin: 0.5,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     ));
//     _controller.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         Navigator.pushNamed(context, Routes.locationAccessScreen);
//       }
//     });
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
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(),
//         child: ScaleTransition(
//           scale: _animation,
//           child: Image.asset(
//             AppImages.splashImage,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }

/// Fade Animation
// class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..forward();
//     _animation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     ));
//     _controller.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         Navigator.pushNamed(context, Routes.locationAccessScreen);
//       }
//     });
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
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(),
//         child: FadeTransition(
//           opacity: _animation,
//           child: Image.asset(
//             AppImages.splashImage,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }



/// Slide Animation
// class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
//
//   late AnimationController _animationController;
//   late Animation<Offset> _slideAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 3),
//     );
//
//
//     _slideAnimation = Tween<Offset>(
//       begin: Offset.zero,
//       end: const Offset(0.0, 1.0),
//     ).animate(_animationController);
//
//     _animationController.forward().then(
//           (_) => Navigator.pushNamed(context, Routes.locationAccessScreen),
//     );
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             decoration: const BoxDecoration(),
//             child: Image.asset(
//               AppImages.splashImage,
//               fit: BoxFit.cover,
//             ),
//           ),
//           SlideTransition(
//             position: _slideAnimation,
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               color: Colors.white,
//               child: Center(
//                 child: Image.asset(
//                   AppImages.splashImage,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
// }


/// lotte animation
// class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
//    AnimationController? _animationController;
//
//   late LottieComposition _lottieComposition;
//   void initState() {
//     super.initState();
//     _loadAnimation();
//   }
//
//   Future<void> _loadAnimation() async {
//     try {
//       final animationData = await rootBundle.load('assets/animation/splash_animation.json');
//       final animation = await LottieComposition.fromBytes(animationData.buffer.asUint8List());
//       setState(() {
//         _lottieComposition = animation;
//       });
//       _animationController?.duration = _lottieComposition.duration;
//       _animationController?.repeat();
//       _animationController?.addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           onComplete();
//         }
//       });
//     } catch (e) {
//       print('Error parsing animation: $e');
//     }
//   }
//
//   void onComplete() {
//     Navigator.pushNamed(context, Routes.locationAccessScreen);
//   }
//
//   @override
//   void dispose() {
//     _animationController?.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: _lottieComposition != null
//             ? Lottie(
//           composition: _lottieComposition,
//           controller: _animationController,
//         )
//             : const Center(
//           child: CircularProgressIndicator(),
//         ),
//       ),
//     );
//   }
//
//
// }


/// 2

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this,);
        Future.delayed(Duration(seconds: 5), (){
      Navigator.pushNamed(context, Routes.locationAccessScreen);
    });
  }
  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  Lottie.asset(
          // 'https://assets1.lottiefiles.com/packages/lf20_ATMEN2.json',
            'assets/animation/splash_animation.json',

            controller: animationController,
            onLoaded: (composition){
              animationController.duration = composition.duration;
              animationController.repeat();
            },
            repeat: true
        ),
      ),
    );
  }
}