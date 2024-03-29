import 'package:flutter/material.dart';
import 'package:movies/pages/LatestMovies.dart';
import 'package:movies/pages/trending_movies.dart';

class ShowMovie extends StatelessWidget {
  const ShowMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
          padding: const EdgeInsets.all(16.0),
          child: SearchBar(
            backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFF6D6B6B)), 
            hintText: "SEARCH",
            leading: Icon(Icons.search),
            overlayColor: MaterialStateColor.resolveWith((states) => Color(0xFFF3C2D2)),    
          ),
        ),
            Text(
              'Trending Movies',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 16,
            ),
            trending_movies(),
            
            Text(
              "Latest Movies",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 32,
            ),
            LatestMovies(),
            SizedBox(
              height: 32,
            ),
            Text(
              "Upcomming Movies",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 32,
            ),
            LatestMovies(),
          ],
        ),
      ),
    );
  }
}
