/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Handy Service Full App Flutter V6
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2025-present initappz.
*/
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:freelancer/app/controller/splash_controller.dart';
import 'package:freelancer/app/helper/router.dart';
import 'package:freelancer/app/util/theme.dart';
import 'package:freelancer/app/util/toast.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initConnectivity();
    Get.find<SplashScreenController>().initSharedData();
    _routing();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _routing() {
    Get.find<SplashScreenController>().getConfigData().then((isSuccess) {
      if (isSuccess) {
        if (Get.find<SplashScreenController>().getLanguageCode() != '') {
          var locale = Get.find<SplashScreenController>().getLanguageCode();
          Get.updateLocale(Locale(locale));
        } else {
          var locale = Get.find<SplashScreenController>().defaultLanguage.languageCode != '' && Get.find<SplashScreenController>().defaultLanguage.languageCode != ''
              ? Locale(Get.find<SplashScreenController>().defaultLanguage.languageCode.toString())
              : const Locale('en');
          Get.updateLocale(locale);
        }
        if (Get.find<SplashScreenController>().parser.isNewUser() == false) {
          Get.find<SplashScreenController>().parser.saveWelcome(true);
          Get.offNamed(AppRouter.getIntroRoutes());
        } else {
          Get.find<SplashScreenController>().parser.saveWelcome(true);
          if (Get.find<SplashScreenController>().parser.isNewUser() == true) {
            Get.offNamed(AppRouter.getTabsRoute());
          } else {
            Get.offNamed(AppRouter.getLoginRoute());
          }
        }
      } else {
        Get.toNamed(AppRouter.getErrorRoutes());
      }
    });
  }

  Future<void> initConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    final hasInternet = (connectivityResult.contains(ConnectivityResult.mobile) || connectivityResult.contains(ConnectivityResult.wifi));
    if (!hasInternet) {
      showToast('No Internet Connection');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(builder: (value) {
      return Scaffold(
        backgroundColor: ThemeProvider.whiteColor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/splash.gif', fit: BoxFit.cover, height: 400, width: MediaQuery.of(context).size.width),
              const SizedBox(height: 20),
              const CircularProgressIndicator(color: ThemeProvider.appColor),
              const SizedBox(height: 20),
              Text('Please wait'.tr, style: const TextStyle(color: ThemeProvider.appColor, fontFamily: 'bold'))
            ],
          ),
        ),
      );
    });
  }
}
