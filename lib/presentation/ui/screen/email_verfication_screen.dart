import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screen/otp_verification_screen.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/app_logo_widget.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();

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
                  'Welcome back',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'please enter your email address',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Email'),
                  controller: _emailTEController,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: _onTapNextButton, child: const Text('Next')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapNextButton() {
    Get.off(() => const OTPVerificationScreen());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTEController.dispose;
    super.dispose();
  }
}
