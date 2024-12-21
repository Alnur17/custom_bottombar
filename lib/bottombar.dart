import 'package:flutter/material.dart';

class BottomNavBarV2 extends StatefulWidget {
  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Display the selected screen based on the index
          IndexedStack(
            index: currentIndex,
            children: [
              HomeScreen(),
              MenuScreen(),
              BookmarksScreen(),
              NotificationsScreen(),
            ],
          ),
          // Bottom navigation bar
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12)),
                    child: CustomPaint(
                      size: Size(size.width, 80),
                      painter: BNBCustomPainter(),
                    ),
                  ),
                  Center(
                    heightFactor: 0,
                    child: FloatingActionButton(
                      backgroundColor: Colors.orange,
                      shape: const CircleBorder(),
                      elevation: 4.0,
                      onPressed: () {},
                      child: const Icon(Icons.shopping_basket),
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.home,
                                color: currentIndex == 0
                                    ? Colors.orange
                                    : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(0);
                              },
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                color: currentIndex == 0
                                    ? Colors.orange
                                    : Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.restaurant_menu,
                                color: currentIndex == 1
                                    ? Colors.orange
                                    : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(1);
                              },
                            ),
                            Text(
                              'Menu',
                              style: TextStyle(
                                color: currentIndex == 1
                                    ? Colors.orange
                                    : Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Container(width: size.width * 0.20), // Spacer for FAB
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.bookmark,
                                color: currentIndex == 2
                                    ? Colors.orange
                                    : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(2);
                              },
                            ),
                            Text(
                              'Bookmarks',
                              style: TextStyle(
                                color: currentIndex == 2
                                    ? Colors.orange
                                    : Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.notifications,
                                color: currentIndex == 3
                                    ? Colors.orange
                                    : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(3);
                              },
                            ),
                            Text(
                              'Notifications',
                              style: TextStyle(
                                color: currentIndex == 3
                                    ? Colors.orange
                                    : Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Screen for Home
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return Center(
          child: Text(
            'Home Screen',
            style: TextStyle(fontSize: 24),
          ),
        );
      },
    );
  }
}

// Screen for Menu
class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Menu Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Screen for Bookmarks
class BookmarksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Bookmarks Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Screen for Notifications
class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notifications Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.4, 0);

    path.arcToPoint(
      Offset(size.width * 0.6, 0),
      radius: const Radius.circular(30),
      clockwise: false,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.white, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
