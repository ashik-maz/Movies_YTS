import 'package:flutter/material.dart';
import 'package:movies/pages/ShowMovie.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff23272e),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.asset(
            'images/logo1.png',
            fit: BoxFit.cover,
            height: 50,
            filterQuality: FilterQuality.high,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            )
          ],
        ),
        body: ShowMovie(),
        bottomNavigationBar: BottomNavigation());
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Color(0xFF6A6A6A),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.browse_gallery),
          label: "Browse",
          backgroundColor: Color(0xFF6A6A6A),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
          backgroundColor: Color(0xFF6A6A6A),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_collection_outlined),
          label: "My List",
          backgroundColor: Color(0xFF6A6A6A),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Account",
          backgroundColor: Color(0xFF6A6A6A),
        ),
      ],
      selectedItemColor: Colors.white,
  unselectedItemColor: Colors.white.withOpacity(0.5),
  showUnselectedLabels: true,
  //labelStyle: TextStyle(color: Colors.white),
    );
  }
}
