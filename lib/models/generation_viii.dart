import 'dream_world.dart';

class GenerationViii {
  GenerationViii({
    required this.icons,
  });

  final DreamWorld icons;

  factory GenerationViii.fromJson(Map<String, dynamic> json) => GenerationViii(
    icons: DreamWorld.fromJson(json['icons']),
  );

  Map<String, dynamic> toJson() => {
    'icons': icons.toJson(),
  };
}