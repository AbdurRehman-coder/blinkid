

import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/constants/images_path.dart';
import 'package:blinkid/resources/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../resources/constants/text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _numberController = TextEditingController();

  String? _validatePhoneNumber(String? value) {
    if (value!.isEmpty) {
      return 'Phone number is required.';
    }
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'Please enter a valid phone number.';
    }
    return null;
  }

  void _submitPhoneNumber() async {
    String number = '+92' + _numberController.text.trim();
    if (_validatePhoneNumber(number) == null) {
      // call API to login with the entered number
      print('Submitting phone number: $number');
    } else {
      // show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter a valid phone number.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteLightBackground,
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/login_screen_image.png',
              height: size.height * 0.5,
              width: size.width,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5,),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text('Let\'s login in a Blink',
                    style: AppTextStyle.gilroyBold.copyWith(
                      fontSize: 22,
                    )),
              ),
              // SizedBox(height: 14,),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text('Please enter your mobile',
                    style: AppTextStyle.gilroyLight.copyWith(
                      color: AppColors.grayTextColor,
                      fontSize: 16,
                    )),
              ),

              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Material(
                  borderRadius: BorderRadius.circular(8),
                  elevation: 4,
                  child: Container(
                    // padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            AppImages.pakistanLogo,
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '+92',
                          style: TextStyle(fontSize: 16),
                        ),
                        const VerticalDivider(
                          thickness: 5,
                          color: Colors.red,
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: _numberController,
                            keyboardType: TextInputType.phone,
                            inputFormatters: [LengthLimitingTextInputFormatter(10)],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '3120998344',

                              hintStyle: AppTextStyle.gilroyLight.copyWith(
                                color: AppColors.grayTextColor,
                                fontSize: 16,
                              )
                            ),
                            onChanged: (value){
                              if(value.length == 10){
                                /// call your api here
                                Navigator.pushNamed(context, Routes.verifyOTPScreen);
                              }
                            },

                            validator: _validatePhoneNumber,
                          ),
                        ),
                        SizedBox(width: 8),

                      ],
                    ),
                  ),
                ),
              ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children:  [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Or continue with',
                    style: AppTextStyle.gilroyLight.copyWith(
                      color: AppColors.grayTextColor,
                    ),),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: MaterialButton(
                      height: size.height * 0.07,
                      color: Colors.white,
                      // elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        // TODO: Handle Google button press
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            AppImages.googleLogo,
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(width: 8),
                          Text('Google'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: MaterialButton(
                      height: size.height * 0.07,
                      color: Colors.white,
                      // elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        // TODO: Handle Facebook button press
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            AppImages.facebookLogo,
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(width: 8),
                          Text('Facebook'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
           SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text.rich(
                TextSpan(
                  text: 'By continuing, you are agreeing to our ',
                  children: [
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(color: Colors.red),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle privacy policy link press
                        },
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(color: Colors.red),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle terms and conditions link press
                        },
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
              ),
            ),

            SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
