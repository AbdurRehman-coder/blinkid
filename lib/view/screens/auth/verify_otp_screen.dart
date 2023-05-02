
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyOtpScreen extends StatefulWidget {
  @override
  _VerifyOtpScreenState createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _digitControllers = List.generate(6, (_) => TextEditingController());
  Timer? _timer;
  int _start = 60;

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
  }

  @override
  void dispose() {
    _timer?.cancel();
    _digitControllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // TODO: call verification API
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please enter the 6 digit code sent to your phone',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                6,
                    (index) => SizedBox(
                  width: 48.0,
                  height: 48.0,
                  child: TextFormField(
                    controller: _digitControllers[index],
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(1),
                    ],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24.0),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: EdgeInsets.zero,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a digit';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Did not receive code?',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Resend ($_start)',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submitForm,
                child: Text('Verify'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
