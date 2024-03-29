import 'package:flutter/material.dart';
import 'package:movies/controller/YtsMovieController.dart';
import 'package:movies/models/movieModel.dart';

class LatestMovies extends StatefulWidget {
  const LatestMovies({super.key});

  @override
  State<LatestMovies> createState() => _LatestMoviesState();
}

class _LatestMoviesState extends State<LatestMovies> {
  YtsMovieController ytsMovieController = YtsMovieController();
  @override
  Widget build(BuildContext context) {
    Future ytsMovielist = ytsMovieController.getMovieList();

    return SizedBox(
        height: 200,
        width: double.infinity,
        child: FutureBuilder(
            future: ytsMovielist,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Movie> movies = snapshot.data;
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 200,
                          width: 150,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.network(
                                  movies[index].mediumCoverImage,
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
                                    movies[index].title,
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
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
