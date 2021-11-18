
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/models.dart';
import 'package:peliculas/models/movie.dart';
import 'package:peliculas/models/popular_response.dart';
import 'package:peliculas/models/search_response.dart';

class MoviesProvider extends ChangeNotifier {
  String _apiKey = '05b7062e0c5212cc3489837ef6504e92';
  String _baseUrl = 'api.themoviedb.org';
  String _languaje = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  Map<int, List<Cast>> moviesCast = {};

  int popularPage = 0;
  int _nowPlayingPage = 0;

    MoviesProvider(){
      print("Movie Provider inicializado.");
      this.getOnDisplayMovies();
      this.getPopularMovies();      
    }

    Future <String> _getJsonData(String ednpoint, [int page = 1]) async{
      print("getOnDisplayMovies");
       final url = Uri.https( _baseUrl, ednpoint, {
        'api_key': _apiKey,
        'language': _languaje,
        'page': '$page'
    });
      final response = await http.get(url);
      return response.body;
    }
    getOnDisplayMovies() async{
      _nowPlayingPage++;
  final jsonData = await this._getJsonData('3/movie/now_playing',_nowPlayingPage);    
  final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);
  onDisplayMovies = nowPlayingResponse.results;
  notifyListeners();
    }

     getPopularMovies() async{
  popularPage++;
  final jsonData = await this._getJsonData('3/movie/popular',popularPage);
  final popularResponse = PopularResponse.fromJson(jsonData);
  popularMovies = [ ...popularMovies, ...popularResponse.results];
  print(popularMovies[0]);
  notifyListeners();
}

 Future <List<Cast>> getMovieCast ( int movieId ) async {

    if( moviesCast.containsKey(movieId) ){
      return moviesCast[movieId]!;
    }

      print("Pidiendo Informacion al servidor de los actores...");

      final jsonData = await this._getJsonData('3/movie/$movieId/credits');    
      final creditsResponse = CreditsResponse.fromJson( jsonData );

      moviesCast[movieId] = creditsResponse.cast;

      return creditsResponse.cast;

  }

  Future <List<Movie>> searchMovie ( String query ) async {
      final url = Uri.https( _baseUrl, '3/search/movie', {
        'api_key': _apiKey,
        'languaje': _languaje,
        'query': query
    });

final response = await http.get(url);
final searchResponse = SearchResponse.fromJson( response.body );

return searchResponse.results;

  }


}