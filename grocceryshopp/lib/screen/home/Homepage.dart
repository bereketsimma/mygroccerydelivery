import 'package:flutter/material.dart';
import 'package:grocceryshopp/apiServices/alldata.dart';
import 'package:grocceryshopp/screen/favorites.dart';
import 'package:grocceryshopp/screen/homescrencontent.dart';
import 'package:grocceryshopp/screen/profileScreen.dart';
import 'package:grocceryshopp/screen/cart.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void initState() {
    super.initState();
fetchProducts();
  }
  int selectedIndex = 0;
  final PageController _pageController = PageController();

  void onTabChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  backgroundColor: Colors.white, // Background color
  elevation: 8, // Shadow depth
  centerTitle: true, // Center the title
  title: Text(
    'Your GroceryShop',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 22,
      letterSpacing: 1,
    ),
  ),
  leading: Icon(Icons.person, color: Colors.black), // Optional leading icon
  actions: [
    IconButton(
  icon: Icon(Icons.notifications),
      color: Colors.black,
      onPressed: () {
        // Do something
      },
    ),
  ],
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(24), // Rounded bottom corners
    ),
  ),
),

      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: [
          HomeScreenContent(),
          Favorites(),
          Cart(),
          Profilescreen(),
        ],
      ),
      bottomNavigationBar: Container(
         decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
      boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 10,
        offset: Offset(0, -1), 
      ),
    ],
  ),
        child: GNav(
          
          selectedIndex: selectedIndex,
          onTabChange: onTabChanged,
          rippleColor: Colors.grey[800] ?? Colors.grey,
          hoverColor: Colors.grey[700] ?? Colors.grey,
          duration: Duration(milliseconds: 500),
          gap: 8,
          color: Colors.grey[800],
          activeColor: const Color.fromARGB(255, 31, 164, 36),
          iconSize: 34,
          tabBackgroundColor: Colors.green.withOpacity(0.1),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        
          tabs: const [
            GButton(icon: LineIcons.home, text: 'Home'),
            GButton(icon: LineIcons.heart, text: 'Likes'),
            GButton(icon: LineIcons.shoppingCart, text: 'Cart'),
            GButton(icon: LineIcons.user, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}

