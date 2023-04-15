import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/infrastructure/infrastructure.dart';
import 'package:pokedex_app/presentation/presentation.dart';
import 'package:provider/provider.dart';

void main() {
  Dio client = Dio(BaseOptions(baseUrl:'https://pokeapi.co/api/v2'),);
  runApp(MultiProvider(builder:(context,_)=> const AppScreen(), providers: [
    ChangeNotifierProvider<PokeApiRepository>(create: (_)=>PokeApiRepository(client))
  ],));
}




