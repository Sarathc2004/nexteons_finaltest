import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexteons_final_test/model/apimodel.dart';
import 'package:nexteons_final_test/screens/lists/apiservice.dart';

class Apicontroller extends GetxController {
  var apimodel = Apimodel().obs;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController ratecontroller = TextEditingController();

  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getListData();
  }

  getListData() async {
    try {
      isLoading.value = true;
      final response = await ApiService().getData() as List;
      final data = response.map((e) => Apimodel.fromJson(e)).toList();
      apimodel.value = data as Apimodel;
      isLoading.value = false;
      // print(apimodel);
    } catch (e) {
      isLoading.value = false;
      print("Error $e");
    }
  }

  // postListData() async {
  //   final name = namecontroller.text;
  //   try {
  //     final rate = int.parse(ratecontroller.text);
  //     final response = await ApiService().postData(name, rate);
  //     if (response != null) {
  //       await getListData();
  //     }
  //   } catch (e) {
  //     print("Error $e");
  //   }
  // }

  // updateData(String id) async {
  //   final name = namecontroller.text;
  //   try {
  //     final rate = double.parse(ratecontroller.text);
  //     print('Updating data for ID: $id, Name: $name, Rate: $rate');
  //     final data = await ApiService().updateSingleItem(id, name, rate);
  //     if (data != null) {
  //       Get.snackbar("Updated", "Data Updated Successfully");
  //     }
  //     await getListData();
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  // deleteData(String id) async {
  //   try {
  //     final data = await ApiService().deleteSingleItem(id);
  //     if (data != null) {
  //       Get.snackbar("Deleted", "Successfully Deleted",
  //           backgroundColor: Colors.red);
  //     }
  //     await getListData();
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }
}
