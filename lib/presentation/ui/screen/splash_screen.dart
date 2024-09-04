import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screen/email_verfication_screen.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/app_logo_widget.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  // splash screen to email verification screen
  Future<void> _moveNextScreen() async{
    await Future.delayed(Duration(seconds: 2));
    Get.off(()=> EmailVerificationScreen());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveNextScreen();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              AppLogoWidget(),
              const Spacer(),
              const CircularProgressIndicator(),
              const SizedBox(height: 16),
              const Text(
                'version 1.0',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


