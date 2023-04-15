import 'dream_world.dart';
import 'home.dart';

class GenerationVii {
  GenerationVii({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  final DreamWorld icons;
  final Home ultraSunUltraMoon;

  factory GenerationVii.fromJson(Map<String, dynamic> json) => GenerationVii(
    icons: DreamWorld.fromJson(json['icons']),
    ultraSunUltraMoon: Home.fromJson(json['ultra-sun-ultra-moon']),
  );

  Map<String, dynamic> toJson() => {
    'icons': icons.toJson(),
    'ultra-sun-ultra-moon': ultraSunUltraMoon.toJson(),
  };
}
