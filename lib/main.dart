//import 'package:custom_bottombar/home.dart';
import 'package:flutter/material.dart';

import 'bottombar.dart';
//
// class CustomBottomNavBar extends StatefulWidget {
//   const CustomBottomNavBar({super.key});
//
//   @override
//   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// }
//
// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   int _currentIndex = 0;
//
//   // List of screens to navigate between
//   final List<Widget> _screens = [
//     const Home(),
//     const Center(child: Text('Video Screen', style: TextStyle(fontSize: 24))),
//     const Center(
//         child: Text('Bookmark Screen', style: TextStyle(fontSize: 24))),
//     const Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       // Display the current screen
//       floatingActionButton: SizedBox(
//         height: 70,
//         width: 70,
//         child: FloatingActionButton(
//           onPressed: () {
//             // Example action for FAB
//             print("FAB clicked");
//           },
//           backgroundColor: Colors.white,
//           elevation: 0,
//           shape: CircleBorder(
//             side: BorderSide(color: Colors.blue.shade100, width: 4),
//           ),
//           child: const Icon(
//             Icons.north_east,
//             size: 32,
//             color: Colors.blue,
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: ClipRRect(
//         clipBehavior: Clip.none,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(12),
//           topRight: Radius.circular(12),
//         ),
//         child: BottomAppBar(
//           padding: EdgeInsets.zero,
//           color: Colors.blue[100],
//           shape: const CircularNotchedRectangle(),
//           notchMargin: 6,
//           elevation: 10,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               _buildNavItem(Icons.home_outlined, Icons.home, "Home", 0),
//               _buildNavItem(Icons.play_circle_outline, Icons.play_circle_fill,
//                   "Video", 1),
//               const SizedBox(width: 70), // Space for the FAB
//               _buildNavItem(
//                   Icons.bookmark_border, Icons.bookmark, "Bookmark", 2),
//               _buildNavItem(Icons.person_outline, Icons.person, "Profile", 3),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildNavItem(
//       IconData inactiveIcon, IconData activeIcon, String label, int index) {
//     bool isActive = _currentIndex == index;
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _currentIndex = index; // Update the current index on tap
//         });
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             isActive ? activeIcon : inactiveIcon, // Switch icon based on state
//             size: 28,
//             color: isActive ? Colors.blue : Colors.white,
//           ),
//           const SizedBox(height: 4),
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               color: isActive ? Colors.blue : Colors.white,
//               fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavBarV2(),
  ));
}
