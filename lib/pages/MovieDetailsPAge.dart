import 'package:flutter/material.dart';
import 'package:movies/models/movieModel.dart';

class MovieDetails extends StatefulWidget {
  final Movie movie;

  MovieDetails({Key? key, required this.movie}) : super(key: key);

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 40, 72),
        centerTitle: true,
        title: Text('Movie Details',style: TextStyle(),),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.movie.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.network(widget.movie.backgroundImage),
              SizedBox(height: 10),
              Text(
                'Year: ${widget.movie.year}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Rating: ${widget.movie.rating}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Genres: ${widget.movie.genres.join(", ")}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Summary: ${widget.movie.summary}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Runtime: ${widget.movie.runtime} min',
                style: TextStyle(fontSize: 18),
              ),
              // Add more details as needed
            ],
          ),
        ),
      ),
    );
  }
}
