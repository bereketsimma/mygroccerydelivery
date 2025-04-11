import 'package:flutter/material.dart';
import 'package:grocceryshopp/apiServices/alldata.dart';
import 'package:grocceryshopp/screen/models/grocerydatamodel.dart';
import 'package:grocceryshopp/widget/cards.dart';

class HomeScreenContent extends StatefulWidget {
  HomeScreenContent({super.key});

  @override
  _HomeScreenContentState createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  List<Map<String, dynamic>> groceryCategories = [
    {
      "name": "Fruits",
      "icon": Image.asset("/Images/apple.png", width: 30, height: 30),
    },
    {
      "name": "Diary products",
      "icon": Image.asset("/Images/milk.png", width: 50, height: 30),
    },
    {
      "name": "Meat",
      "icon": Image.asset("/Images/meat.png", width: 30, height: 30),
    },
    {
      "name": "Beverage",
      "icon": Image.asset("/Images/soft-drink.png", width: 30, height: 30),
    },
    {
      "name": "Vegetables",
      "icon": Image.asset("/Images/broccoli.png", width: 30, height: 30),
    },
    {
      "name": "Packed food",
      "icon": Image.asset("/Images/fries.png", width: 30, height: 30),
    },
  ];

 List<Product> products = []; // List to store products
  bool isLoading = true;

  List<Map<String, dynamic>> filteredCategories=[{}];

    Future<void> fetchProductsData() async {
    try {
      final fetchedProducts = await fetchProducts();
      setState(() {
        products = fetchedProducts; // Assign the fetched data to the list
        isLoading = false; // Set loading state to false
      });
    } catch (e) {
      // Handle error if API call fails
      setState(() {
        isLoading = false;
      });
      print("Error fetching products: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    filteredCategories = groceryCategories; // Show all categories initially
  }

  String searchQuery = ''; // To hold current search text


  // Function to filter categories based on search query
 void _filterCategories(String query) {
  final filtered = groceryCategories.where((category) {
    return category["name"]
        .toLowerCase()
        .contains(query.toLowerCase());
  }).toList();

  setState(() {
    searchQuery = query;
    filteredCategories = filtered;
  });
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          // Search bar
          Container(
            height: 80,
            padding: const EdgeInsets.all(8),
            child: TextField(
              onChanged: _filterCategories, // Call filter function on text change
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),

           if (searchQuery.isNotEmpty)
      Container(
width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        constraints: const BoxConstraints(maxHeight: 200),
        child: filteredCategories.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: filteredCategories.length,
                itemBuilder: (context, index) {
                  final category = filteredCategories[index];
                  return ListTile(
                    leading: category['icon'],
                    title: Text(category['name']),
                    onTap: () {
                      // Optional: Do something when a suggestion is tapped
                      setState(() {
                        searchQuery = '';
                        filteredCategories = groceryCategories;
                      });
                    },
                  );
                },
              )
            : const Padding(
              
                padding: EdgeInsets.all(18.0),
                child: Text('No matching category found'),
              ),
      ),
          const SizedBox(height: 10),
          const Text("Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          // Display filtered categories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: filteredCategories.map((category) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey[100],
                        padding: const EdgeInsets.all(8),
                        child: category['icon'],
                      ),
                      const SizedBox(height: 5),
                      Text(category['name'], style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),
          // Products Grid (for demo purposes)
          const SizedBox(height: 10),
          Expanded(
            child:isLoading
                    ? const Center(child: CircularProgressIndicator()) // Show loading indicator while data is fetching
                    : ListView.builder(
                        itemCount: products.length, // Set itemCount to the number of products
                        itemBuilder: (context, index) {
                          return Cards(product: products[index]); // Return the Cards widget for each product
                        },
                      ),
          ),
        ],
      ),
    );
  }
}
