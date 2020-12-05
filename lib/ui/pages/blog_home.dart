import 'package:flutter/material.dart';

import 'page_view/favorite.dart';
import 'page_view/home.dart';
import 'page_view/search.dart';

class BlogHomeScreen extends StatefulWidget {
  @override
  _BlogHomeScreenState createState() => _BlogHomeScreenState();
}

class _BlogHomeScreenState extends State<BlogHomeScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          currentIndex = index;
          setState(() {});
        },
        children: [
          Home(),
          Search(),
          Favorite(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          _pageController.animateToPage(currentIndex,
              duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 25), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 25), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, size: 25), label: '')
        ],
      ),
    );
  }
}

// Container(
//         height: 50,
//         // color: Colors.pink,
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                   icon: Icon(Icons.home_outlined, size: 25), onPressed: () {}),
//               IconButton(icon: Icon(Icons.search, size: 25), onPressed: () {}),
//               IconButton(
//                   icon: Icon(Icons.favorite_border, size: 25), onPressed: () {})
//             ],
//           ),
//         ),
//       ),
