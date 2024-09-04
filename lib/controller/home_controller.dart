import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeController extends GetxController {
  RxList<dynamic> menu = <dynamic>[].obs;
  RxList<dynamic> prev_orders = <dynamic>[].obs;
  RxList<dynamic> popular_shop_list = <dynamic>[].obs;

  @override
  void onInit() {
    super.onInit();
    getMenu();
    getPrevOrders();
    getPopularShopList();
  }

  Future<void> getPrevOrders() async {
    var url = Uri.parse("https://munch-mart-server.onrender.com/prev_orders");
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var res = jsonDecode(response.body);
        prev_orders.value = res;
      } else {
        print("Error fetching prev orders: ${response.statusCode}");
      }
    } catch (e) {
      print("Exception fetching prev orders: $e");
    }
  }

  Future<void> getMenu() async {
    var url = Uri.parse("https://munch-mart-server.onrender.com/menu");
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var res = jsonDecode(response.body);
        menu.value = res;
      } else {
        print("Error fetching menu: ${response.statusCode}");
      }
    } catch (e) {
      print("Exception fetching menu: $e");
    }
  }

  Future<void> getPopularShopList() async {
    var url = Uri.parse("https://munch-mart-server.onrender.com/popular_shop_list");
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var res = jsonDecode(response.body);
        popular_shop_list.value = res;
      } else {
        print("Error fetching popular shop list: ${response.statusCode}");
      }
    } catch (e) {
      print("Exception fetching popular shop list: $e");
    }
  }
}
