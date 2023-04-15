import 'package:flutter/material.dart';
import 'package:pokedex_app/infrastructure/infrastructure.dart';
import 'package:pokedex_app/models/models.dart';
import 'package:pokedex_app/models/pokemon_colors.dart';
import 'package:provider/provider.dart';

class HomeDetailPokemon extends StatelessWidget {
  final int id;
  const HomeDetailPokemon({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PokeApiRepository>(context);
    const style =  TextStyle(color: Colors.white, fontSize: 20);
    const styleName =  TextStyle(color: Colors.white, fontSize:30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Detail'),
      ),
      body: FutureBuilder<Pokemon>(
        future: provider.getOne(id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
              print(snapshot.data?.toJson());
            return Center(
              child: Text('Pokemon ID: $id,\n Error: ${snapshot.error}', style: styleName,),
            );
          } else if (snapshot.hasData) {
            final pokemon = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(PokemonColors.getTypeColor(pokemon.types.first.type.name)),
                          shape: BoxShape.rectangle,
                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))
                      ),
                      child: provider.getImageSvg('${provider.imageUrl}${pokemon.id}.svg'),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(pokemon.name, style:styleName)],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...pokemon.types.map((e) => Card(color: Color(PokemonColors.getTypeColor(e.type.name)),child: SizedBox(width: 150, height: 30,child: Center(child: Text(e.type.name,style: style,))),)),
                    ],
                  ),
                  _buildRow2Column('${pokemon.weight.toDouble()/10}Kg', '${pokemon.height.toDouble()/10}M', styleName, style, 'Weight','Height'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text('${pokemon.moves.length}', style: styleName,),
                          const Text('Movements', style: style,),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            child: SingleChildScrollView(
                              child: Column(
                                  children: pokemon.moves.map((e) => Text('${pokemon.moves.indexOf(e)+1}.- ${e.move.name}', style: style,)).toList()
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('${pokemon.abilities.length}', style: styleName,),
                          const Text('Abilities', style: style,),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            child: SingleChildScrollView(
                              child: Column(
                                  children: pokemon.abilities.map((e) => Text('${pokemon.abilities.indexOf(e)+1}.- ${e.ability.name}', style: style,)).toList()
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )

                ],

              ),

            );
          } else {
            return const Center(
              child: Text('No data'),
            );
          }
        },
      ),
    );
  }

  Padding _buildRow2Column(String text, String text2, TextStyle styleName, TextStyle style,String columText1,String columText2) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text, style: styleName,),
              Text(columText1, style: style,)
            ],
          ),
          const Padding(padding: EdgeInsets.only(left: 40)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text2, style: styleName,),
              Text(columText2, style: style,)
            ],
          )
        ],
      ),
    );
  }
}
