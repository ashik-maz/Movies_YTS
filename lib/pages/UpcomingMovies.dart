import 'package:flutter/material.dart';

class UpcommingMovies extends StatefulWidget {
  const UpcommingMovies({super.key});

  @override
  State<UpcommingMovies> createState() => _UpcommingMoviesState();
}

class _UpcommingMoviesState extends State<UpcommingMovies> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.amber,
                height: 200,
                width: 150,
              ),
            ),
          );
        },
      ),
    );
  }
}