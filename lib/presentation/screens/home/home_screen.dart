import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/infrastructure/infrastructure.dart';
import 'package:pokedex_app/models/pokemon_colors.dart';
import './components/home_detail_pokemon.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  int limit = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<PokeApiRepository>(super.context, listen: false).getAll();
    final provider =
        Provider.of<PokeApiRepository>(super.context, listen: false);
    _scrollController.addListener(() => _onScroll(provider));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(() { });
    super.dispose();
  }

  void _onScroll(PokeApiRepository provider) {
    if (!provider.isLoading &&
        _scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
      limit += 10;
      provider.getAll(limit: limit, loading: false);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.title.contains('https') ? Image.network(widget.title, height: 48,): Text(widget.title) ,
        centerTitle: true,
      ),
      body: Consumer<PokeApiRepository>(
        builder: (context, repository, child) {
          if (repository.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (repository.hasError) {
            return const Center(
                child: Text(
                    'Error al cargar, por favor intenta mas tarde '));
          } else {
            final pokemonList = repository.pokemonList;
            return GridView.builder(
              controller: _scrollController,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: pokemonList.length,
              itemBuilder: (context, index) {
                final id = index + 1;
                final pokemon = pokemonList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeDetailPokemon(
                                  id: id,
                                )));
                  },
                  child: Card(
                    color: Color(PokemonColors.getTypeColor(pokemon.type)),
                    child: Center(
                      child: Column(
                        children: [
                          repository.getImageSvg('${repository.imageUrl}$id.svg'),
                          Text(pokemon.name),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}


