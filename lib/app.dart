import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screen/splash_screen.dart';
import 'package:flutter_ecommerce/presentation/ui/utils/app_colors.dart';
import 'package:get/get.dart';

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,
        scaffoldBackgroundColor: Colors.white,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.themeColor,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: _outlineInputBorder(),
          enabledBorder: _outlineInputBorder(),
          focusedBorder: _outlineInputBorder(),
          errorBorder: _outlineInputBorder(Colors.red),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
            textStyle: const TextStyle(
                fontSize: 16
            ),
            fixedSize: const Size.fromWidth(double.maxFinite),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.themeColor,
            textStyle: const TextStyle(fontSize: 16)
          )
        )
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder([Color? color]){
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? AppColors.themeColor, width: 1),
        borderRadius: BorderRadius.circular(8)
    );
  }
}