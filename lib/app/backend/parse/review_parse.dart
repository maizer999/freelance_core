/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Handy Service Full App Flutter V6
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2025-present initappz.
*/
import 'package:get/get.dart';
import 'package:freelancer/app/backend/api/api.dart';
import 'package:freelancer/app/helper/shared_pref.dart';
import 'package:freelancer/app/util/constant.dart';

class ReviewParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  ReviewParser({required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getMyReviews(var body) async {
    var response = await apiService.postPrivate(AppConstants.getMyReviews, body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  String getFreelancerId() {
    return sharedPreferencesManager.getString('freelancerId') ?? '';
  }

  String getUID() {
    return sharedPreferencesManager.getString('uid') ?? '';
  }
}
