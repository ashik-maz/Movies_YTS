
class Movie{
  String title="";
  String medium_cover_image="";


  Movie({required this.title, required this.medium_cover_image});


  Movie.fromMovieMap(movie){
    title=movie['title'];
    medium_cover_image=movie['medium_cover_image'];
  }
}