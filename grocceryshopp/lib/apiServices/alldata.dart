import 'dart:convert';
import 'package:grocceryshopp/screen/models/grocerydatamodel.dart';
import 'package:http/http.dart' as http;

Future<List<Product>> fetchProducts() async {
  final url = 'https://dummyjson.com/products/category/groceries';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final List<dynamic> products = data['products'];

    return products.map((product) => Product.fromJson(product)).toList();
  } else {
    throw Exception("Failed to load products. Status code: ${response.statusCode}");
  }
}
