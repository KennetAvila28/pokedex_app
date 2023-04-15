class PokemonColors {
  static const Map<String, int> _typeColors = {
    'fighting': 0xFF9F422A,
    'flying': 0xFF90B1C5,
    'poison': 0xFF642785,
    'ground': 0xFFAD7235,
    'rock': 0xFF4B190E,
    'bug': 0xFF179A55,
    'ghost': 0xFF363069,
    'steel': 0xFF5C756D,
    'fire': 0xFFB22328,
    'water': 0xFF2648DC,
    'grass': 0xFF007C42,
    'electric': 0xFFE0E64B,
    'psychic': 0xFFAC296B,
    'ice': 0xFF7ECFF2,
    'dragon': 0xFF378A94,
    'fairy': 0xFF9E1A44,
    'dark': 0xFF040706,
    'gray_21': 0xFFB1A5A5,
  };

  static int getTypeColor(String type) {
    return _typeColors.containsKey(type) ? _typeColors[type]! : _typeColors['gray_21']!;
  }
}