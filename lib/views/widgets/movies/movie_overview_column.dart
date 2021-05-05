import 'package:flutter/material.dart';

//Models
import '../../../models/movie_model.dart';

//Widgets
import '../common/genre_chips.dart';
import '../common/ratings.dart';

class MovieOverviewColumn extends StatelessWidget {
  const MovieOverviewColumn({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        //Title
        Text(
          movie.title,
          style: textTheme.headline2!.copyWith(
            color: Colors.black,
            fontSize: 26,
          ),
        ),

        const SizedBox(height: 10),

        //Genres
        GenreChips(genres: movie.genreNames),

        const SizedBox(height: 12),

        //Ratings
        if (movie.rating != null) Ratings(rating: movie.rating!),

        //Elipses
        const Text(
          "...",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 22,
            height: 1,
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }
}
