import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screen/splash_screen.dart';
import 'package:flutter_ecommerce/presentation/ui/utils/app_colors.dart';

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,
        scaffoldBackgroundColor: Colors.white,
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.themeColor,

        ),
      ),
    );
  }
}