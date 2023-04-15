import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/infrastructure/infrastructure.dart';
import 'package:pokedex_app/models/models.dart';

class PokeApiRepository extends ChangeNotifier implements BaseRepository {
  Dio client;

  PokeApiRepository(this.client);

  String get imageUrl => 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/';

  String path = '/pokemon';
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  bool _hasError = false;

  bool get hasError => _hasError;

  String _errorMessage = '';

  String get errorMessage => _errorMessage;

  List<Result> _pokemonList = [];

  List<Result> get pokemonList => _pokemonList;

  @override
  Future<void> getAll({int limit = 10, loading = true}) async {
    _isLoading = loading;
    _hasError = false;
    _errorMessage = '';

    try {
      final pokemonResponse =
          await client.get('$path/?limit=$limit');
      PokemonListResponse data =
          PokemonListResponse.fromJson(pokemonResponse.data);
      _pokemonList = data.results;
    } catch (e) {
      _hasError = true;
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  @override
  Future<Pokemon>? getOne(int id) async {
    _isLoading = true;
    _hasError = false;
    _errorMessage = '';
    try {
      final pokemonResponse = await client.get('$path/$id');
      Pokemon data = Pokemon.fromJson(pokemonResponse.data);
      return data;
    } catch (e) {
      _hasError = true;
      _errorMessage = e.toString();
      rethrow;
    } finally {
      _isLoading = false;
    }
  }

  Padding getImageSvg(String url){
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: SvgPicture.network(
        url,
        placeholderBuilder: (BuildContext context) => Container(
            padding: const EdgeInsets.all(30.0),
            child: const CircularProgressIndicator()),
        width: 128,
        height: 128,
      ),
    );
  }
}
