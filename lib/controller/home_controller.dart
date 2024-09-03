import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeController extends GetxController {
  RxList<dynamic> menu = [].obs;
  RxList<dynamic> prev_orders = [].obs;
  RxList<dynamic> popular_shop_list = [].obs;

  @override
  void onInit() {
    super.onInit();
    getMenu();
    getPrevOrders();
    getPopularShopList();
  }

  Future<void> getPrevOrders() async {
    var url = Uri.parse("https://munch-mart-server.onrender.com/prev_orders");
    var datas = await http.get(url);
    var res = jsonDecode(datas.body);
    prev_orders.value = res;
  }

  Future<void> getMenu() async {
    var url = Uri.parse("https://munch-mart-server.onrender.com/menu");
    var datas = await http.get(url);
    var res = jsonDecode(datas.body);
    menu.value = res;
  }

  Future<void> getPopularShopList() async {
    var url = Uri.parse("https://munch-mart-server.onrender.com/popular_shop_list");
    var datas = await http.get(url);
    var res = jsonDecode(datas.body);
    popular_shop_list.value = res;
  }
}
