import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screen/dashboard_screen.dart';
import 'package:flutter_ecommerce/presentation/ui/screen/otp_verification_screen.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/app_logo_widget.dart';
import 'package:get/get.dart';

class MakeProfileScreen extends StatefulWidget {
  const MakeProfileScreen({super.key});

  @override
  State<MakeProfileScreen> createState() => _MakeProfileScreenState();
}

class _MakeProfileScreenState extends State<MakeProfileScreen> {

  /*input field*/
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _addressTEController = TextEditingController();

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
                  'Complete Profile',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'Get started with us with your details',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(hintText: 'First Name'),
                  controller: _firstNameTEController,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(hintText: 'Last Name'),
                  controller: _lastNameTEController,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(hintText: 'Mobile'),
                  controller: _mobileTEController,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(hintText: 'City'),
                  controller: _cityTEController,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  maxLines: 4,
                  decoration:
                      const InputDecoration(hintText: 'Shipping Address'),
                  controller: _addressTEController,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: _onTapNextButton, child: const Text('Complete')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapNextButton() {
    Get.off(() => const DashboardScreen());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstNameTEController.dispose;
    _lastNameTEController.dispose;
    _mobileTEController.dispose;
    _cityTEController.dispose;
    _addressTEController.dispose;
    super.dispose();
  }
}
