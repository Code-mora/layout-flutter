import 'dart:convert';

import 'package:ahwaz_new/product_model.dart';
import 'package:http/http.dart' as http;
class ProductHelper {
  // fungsi mengambil seluruh list produk
  Future<List<Product>> getAllProducts() async {
    // siapkan url endpoint produk
    var uri = Uri.parse("https://fakestoreapi.com/products");
    var respon = await http.get(uri);
    if(respon.statusCode == 200) {
      List<dynamic> hasil = json.decode(respon.body);
      return hasil.map((json)=>Product.fromMap(json)).toList();
    } else {
      throw Exception("Koneksi terganggu");
    }
  }
}