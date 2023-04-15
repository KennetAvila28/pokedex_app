import 'package:flutter/material.dart';
import 'package:pokedex_app/presentation/screens/home/home_screen.dart';
import 'package:pokedex_app/shared/shared.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme,
      theme: MyThemes.lightTheme,
      home: const HomeScreen(title: 'https://3.bp.blogspot.com/-_gE6akmxfrw/UPXpnRVzoUI/AAAAAAAAApQ/eAuD868vHa4/s1600/Pokedex_logo.png'),
    );
  }
}
