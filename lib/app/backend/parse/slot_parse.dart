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

class SlotParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  SlotParser({required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getSlotById() async {
    var response = await apiService.postPrivate(AppConstants.getSlotById, {"id": sharedPreferencesManager.getString('uid')}, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> onUpdateSlots(dynamic body) async {
    var response = await apiService.postPrivate(AppConstants.slotUpdate, body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> destroyTimeSlot(var body) async {
    var response = await apiService.postPrivate(AppConstants.slotDelete, body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }
}
