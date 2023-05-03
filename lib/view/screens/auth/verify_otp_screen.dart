
import 'dart:async';

import 'package:blinkid/resources/constants/app_colors.dart';
import 'package:blinkid/resources/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../resources/constants/text_styles.dart';

class VerifyOtpScreen extends StatefulWidget {
  String? phoneNumber;
  VerifyOtpScreen({this.phoneNumber});
  @override
  _VerifyOtpScreenState createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {

  final _formKey = GlobalKey<FormState>();
  // final _digitControllers = List.generate(6, (_) => TextEditingController());
  final TextEditingController _digitOneController = TextEditingController();
  final TextEditingController _digitTwoController = TextEditingController();
  final TextEditingController _digitThreeController = TextEditingController();
  final TextEditingController _digitFourController = TextEditingController();
  final TextEditingController _digitFiveController = TextEditingController();
  final TextEditingController _digitSixController = TextEditingController();
  final FocusNode _digitOneFocusNode = FocusNode();
  final FocusNode _digitTwoFocusNode = FocusNode();
  final FocusNode _digitThreeFocusNode = FocusNode();
  final FocusNode _digitFourFocusNode = FocusNode();
  final FocusNode _digitFiveFocusNode = FocusNode();
  final FocusNode _digitSixFocusNode = FocusNode();
  Timer? _timer;
  int _start = 60;

  bool _allFieldsFilled = false;


  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();

    _digitOneController.addListener(() {
      setState(() {
        _checkAllFieldsFilled();
      });
    });

    _digitTwoController.addListener(() {
      setState(() {
        _checkAllFieldsFilled();
      });
    });

    _digitThreeController.addListener(() {
      setState(() {
        _checkAllFieldsFilled();
      });
    });

    _digitFourController.addListener(() {
      setState(() {
        _checkAllFieldsFilled();
      });
    });

    _digitFiveController.addListener(() {
      setState(() {
        _checkAllFieldsFilled();
      });
    });

    _digitSixController.addListener(() {
      setState(() {
        _checkAllFieldsFilled();
      });
    });
  }

  void _checkAllFieldsFilled() {
    if (_digitOneController.text.isNotEmpty &&
        _digitTwoController.text.isNotEmpty &&
        _digitThreeController.text.isNotEmpty &&
        _digitFourController.text.isNotEmpty &&
        _digitFiveController.text.isNotEmpty &&
        _digitSixController.text.isNotEmpty) {
      _allFieldsFilled = true;
    } else {
      _allFieldsFilled = false;
    }
  }
  @override
  void dispose() {
    _timer?.cancel();
    _digitOneController.dispose();
    _digitTwoController.dispose();
    _digitThreeController.dispose();
    _digitFourController.dispose();
    _digitFiveController.dispose();
    _digitSixController.dispose();
    _digitOneFocusNode.dispose();
    _digitTwoFocusNode.dispose();
    _digitThreeFocusNode.dispose();
    _digitFourFocusNode.dispose();
    _digitFiveFocusNode.dispose();
    _digitSixFocusNode.dispose();
    // _digitControllers.forEach((controller) => controller.dispose());
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Text('Verify your number',
                        style: AppTextStyle.gilroyBold.copyWith(
                          fontSize: 22,
                        ),),
                    RichText(
                      text: TextSpan(
                        text: 'Please enter the 6 digit code sent to your phone',
                        style: AppTextStyle.gilroyLight.copyWith(
                                    color: Colors.black45,
                                    fontSize: 17,
                                  ),
                        children: [
                          TextSpan(
                            text: ' (${widget.phoneNumber})',
                            style: AppTextStyle.gilroyLight.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),

                        ],
                      ),
                    ),

                    // Row(
                    //   children: [
                    //     Text('Please enter the 6 digit code sent to your phone',
                    //         style: AppTextStyle.gilroyLight.copyWith(
                    //           color: AppColors.grayTextColor,
                    //           fontSize: 16,
                    //         )),
                    //     Text('(${widget.phoneNumber})',
                    //         style: AppTextStyle.gilroyBold.copyWith(
                    //           color: Colors.black,
                    //           fontSize: 16,
                    //         )),
                    //   ],
                    // ),

                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildDigitTextField(_digitOneController, _digitOneFocusNode,
                            _digitTwoFocusNode),
                        _buildDigitTextField(_digitTwoController, _digitTwoFocusNode,
                            _digitThreeFocusNode),
                        _buildDigitTextField(_digitThreeController, _digitThreeFocusNode,
                            _digitFourFocusNode),
                        _buildDigitTextField(_digitFourController, _digitFourFocusNode,
                            _digitFiveFocusNode),
                        _buildDigitTextField(_digitFiveController, _digitFiveFocusNode,
                            _digitSixFocusNode),
                        _buildDigitTextField(_digitSixController, _digitSixFocusNode, null),
                      ],
                    ),

                    const SizedBox(height: 40.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _allFieldsFilled ? _submitForm : null,
                        child: Text('Verify',
                            style: AppTextStyle.gilroyLight.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                            )
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: _allFieldsFilled ? AppColors.primaryBlueColor : Colors.grey,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          textStyle: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(' '),
                ),
                Row(
                  children: [
                    Text(
                      'Resend code in',
                      style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                    ),
                    Text(
                      ' $_start Seconds',
                      style: AppTextStyle.gilroyLight.copyWith(
                        fontSize: 14,
                        color: AppColors.primaryRedColor,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text(' '),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    // if (_formKey.currentState!.validate()) {
      // TODO: call verification API
      Navigator.pushNamed(context, Routes.welcomeScreen);
    // }
  }

  Widget _buildDigitTextField(TextEditingController controller, FocusNode focusNode, FocusNode? nextFocusNode) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.13,
      height: 60,
      child: Center(
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          keyboardType: TextInputType.number,
          maxLength: 1,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 16.0, right: 16, top: 5),
            counterText: '',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              // borderSide: BorderSide(color: Colors.amberAccent.withOpacity(0.8), width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
            ),
          ),
          onChanged: (value) {
            if (value.isNotEmpty) {
              focusNode.unfocus();
              nextFocusNode?.requestFocus();
            }
          },
        ),
      ),
    );
  }


}
