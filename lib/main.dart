import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tetris/start_game/start_game.dart';

void main() {
  runApp(const GetMaterialApp( home:App(), debugShowCheckedModeBanner: false,));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(brightness: Brightness.dark).copyWith(
          scaffoldBackgroundColor: Colors.black,
          dividerColor: const Color(0xFF2F2F2F),
          dividerTheme: const DividerThemeData(thickness: 10),
        ),
        debugShowCheckedModeBanner: false,
        home: const StartGame(),
      );
}
