import 'crystal.dart';
import 'gold.dart';

class GenerationIi {
  GenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  final Crystal crystal;
  final Gold gold;
  final Gold silver;

  factory GenerationIi.fromJson(Map<String, dynamic> json) => GenerationIi(
    crystal: Crystal.fromJson(json['crystal']),
    gold: Gold.fromJson(json['gold']),
    silver: Gold.fromJson(json['silver']),
  );

  Map<String, dynamic> toJson() => {
    'crystal': crystal.toJson(),
    'gold': gold.toJson(),
    'silver': silver.toJson(),
  };
}
