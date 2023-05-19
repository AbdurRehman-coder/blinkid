import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/constants/images_path.dart';
import 'package:blinkid/resources/constants/text_styles.dart';
import 'package:blinkid/resources/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationAccessScreen extends StatefulWidget {
  const LocationAccessScreen({Key? key}) : super(key: key);

  @override
  State<LocationAccessScreen> createState() => _LocationAccessScreenState();
}

class _LocationAccessScreenState extends State<LocationAccessScreen> {

  PermissionStatus? _permissionGranted;
  Location location = new Location();

  requestLocationpermission() async {
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

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

              Stack(
                children: [
                  Image.asset(AppImages.deliveryAddress),
                  Positioned(
                    top: 30,
                      right: 20,
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            Routes.loginScreen,
                                (Route<dynamic> route) => false,
                          );

                        },
                          child: Icon(Icons.cancel_outlined, size: 30, color: Colors.red,))),

                ],
              ),

              SizedBox(height: 12,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Blinkid requires access to your location!',
                    style: AppTextStyle.gilroyBold.copyWith(
                      fontSize: 25,
                    )),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                    'We would like to access your location so you can view products, deals & Offers live near you.',
                    style: AppTextStyle.gilroyLight.copyWith(
                      fontSize: 16,
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
               requestLocationpermission();
                    // Navigator.pushNamed(context, Routes.loginScreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Allow Location Access',
                      style: AppTextStyle.gilroyLight.copyWith(fontSize: 15),),
                      Icon(Icons.location_on_outlined, color: Colors.white,)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12,),
              InkWell(
                onTap: () {
                  // Do something
                },
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.primaryRedColor,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Enter Your Location',
                      style: AppTextStyle.gilroyLight.copyWith(
                        color: AppColors.primaryRedColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
