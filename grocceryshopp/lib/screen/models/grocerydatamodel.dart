class Product {
  final String title;
  final double price;
  final String thumbnail;

  Product({
    required this.title,
    required this.price,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],           
      price: (json['price'] as num).toDouble(),  
      thumbnail: json['thumbnail'],   
    );
  }
}
