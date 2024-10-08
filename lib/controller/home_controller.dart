import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeController extends GetxController {
  RxList<dynamic> menu = <dynamic>[].obs;
  RxList<dynamic> prev_orders = <dynamic>[].obs;
  RxList<dynamic> popular_shop_list = <dynamic>[].obs;
  RxList<dynamic>mycarts=[].obs;

  @override
  void onInit() {
    super.onInit();
    getMenu();
    getPrevOrders();
    getPopularShopList();
  }

  Future<void> getPrevOrders() async {
    var url = Uri.parse("https://munch-mart-server-lmie.vercel.app/prev_orders");
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
    var url = Uri.parse("https://munch-mart-server-lmie.vercel.app/menu");
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
    var url = Uri.parse("https://munch-mart-server-lmie.vercel.app/popular_shop_list");
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
  void add_to_cart(String pic,String name,String price)
  {
    mycarts.add(
      {
        "cart_pic":pic,
        "cart_name":name,
        "cart_price":price
      }
    );
  }
  void delete_from_cart(int index)
  {
    mycarts.removeAt(index);
  }
}
