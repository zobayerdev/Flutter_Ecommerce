import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screen/make_profile_screen.dart';
import 'package:flutter_ecommerce/presentation/ui/utils/app_colors.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/app_logo_widget.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 82,
                ),
                AppLogoWidget(),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Enter OTP Code',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'A 4 digit OTP has been sent to email',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 16,
                ),
                PinCodeTextField(
                  length: 6,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    selectedColor: Colors.green,
                    inactiveFillColor: Colors.white,
                    inactiveColor: AppColors.themeColor,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  controller: _otpTEController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  appContext: context,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(onPressed: _onTapNextButton, child: const Text('Next')),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodyLarge,
                      text: 'This code will expire in ',
                      children: [
                        TextSpan(
                            text: '120s',
                            style: TextStyle(
                              color: AppColors.themeColor,
                            )),
                      ]),
                ),
                TextButton(onPressed: () {}, child: const Text('Resend Code')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapNextButton(){
    Get.off(()=>MakeProfileScreen());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _otpTEController.dispose;
    super.dispose();
  }
}
