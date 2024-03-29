import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies/controller/YtsMovieController.dart';
import 'package:movies/models/movieModel.dart';
import 'package:movies/pages/MovieDetailsPAge.dart';

class trending_movies extends StatefulWidget {
  trending_movies({super.key});

  @override
  State<trending_movies> createState() => _trending_moviesState();
}

class _trending_moviesState extends State<trending_movies> {
  YtsMovieController ytsMovieController = YtsMovieController();

  @override
  Widget build(BuildContext context) {
    Future ytsMovielist = ytsMovieController.getMovieList();

    return SizedBox(
        width: double.infinity,
        child: FutureBuilder(
            future: ytsMovielist,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Movie> movies = snapshot.data;
                return CarouselSlider.builder(
                    itemCount: movies.length,
                    itemBuilder: (context, itemIndex, PageViewIndex) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return MovieDetails(movie: movies[itemIndex]);
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 300,
                            width: 200,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Image.network(
                                    movies[itemIndex].mediumCoverImage,
                                    fit: BoxFit
                                        .cover, // Change to BoxFit.cover to fill the container
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    color: Colors.black.withOpacity(
                                        0.5), // Optional: Adds a translucent overlay to the title for better readability
                                    padding: EdgeInsets.all(
                                        5), // Optional: Adds some padding to the title
                                    child: Text(
                                      movies[itemIndex].title,
                                      style: TextStyle(
                                          color: Colors
                                              .white), // Optional: Changes text color to white for better readability
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: 300,
                      autoPlay: true,
                      viewportFraction: .54,
                      enlargeCenterPage: true,
                      pageSnapping: true,
                      autoPlayAnimationDuration: const Duration(seconds: 1),
                    ));
              } else {
                // Return a placeholder widget or a loading indicator when data is not available
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
