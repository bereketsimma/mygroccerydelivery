// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:line_icons/line_icons.dart'; // Ensure to import LineIcons

// class CustomBottomNavigationBar extends StatefulWidget {
//   const CustomBottomNavigationBar({super.key});

//   @override
//   State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
// }

// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   int selectedIndex = 0; // Track selected index

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       bottomNavigationBar: GNav(
//         rippleColor: Colors.grey[800]??Colors.grey, // tab button ripple color when pressed
//         hoverColor: Colors.grey[700]?? Colors.grey, // tab button hover color
//         haptic: true, // haptic feedback
//         tabBorderRadius: 15,
//         tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
//         tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
//         tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
//         curve: Curves.easeOutExpo, // tab animation curves
//         duration: Duration(milliseconds: 900), // tab animation duration
//         gap: 8, // the tab button gap between icon and text
//         color: Colors.grey[800], // unselected icon color
//         activeColor: Colors.purple, // selected icon and text color
//         iconSize: 24, // tab button icon size
//         tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
//         tabs: [
//           GButton(
//             icon: LineIcons.home,
//             text: 'Home',
//             onPressed: () {
//               setState(() {
//                 selectedIndex = 0;
//               });
//             },
//           ),
//           GButton(
//             icon: LineIcons.heart,
//             text: 'Likes',
//             onPressed: () {
//               setState(() {
//                 selectedIndex = 1;
//               });
//             },
//           ),
//           GButton(
//             icon: LineIcons.search,
//             text: 'Search',
//             onPressed: () {
//               setState(() {
//                 selectedIndex = 2;
//               });
//             },
//           ),
//           GButton(
//             icon: LineIcons.user,
//             text: 'Profile',
//             onPressed: () {
//               setState(() {
//                 selectedIndex = 3;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
