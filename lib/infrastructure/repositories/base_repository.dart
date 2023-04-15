
import 'package:pokedex_app/models/models.dart';

abstract class BaseRepository{
  Future<void> getAll();
  Future<Pokemon>? getOne(int id);
  // Future<void> store(T data);
  // Future<void> update(String id,T data);
  // Future<void> delete(String id);
}