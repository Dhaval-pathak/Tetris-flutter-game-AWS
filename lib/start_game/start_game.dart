import 'package:flutter/material.dart';
import 'package:tetris/game/tetris.dart';

class StartGame extends StatefulWidget {
  const StartGame({Key? key}) : super(key: key);

  @override
  _StartGameState createState() => _StartGameState();
}

class _StartGameState extends State<StartGame>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.purple,
    ).animate(_animationController);

    _animationController.repeat(reverse: true);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void startGame() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Tetris()),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                'https://media.idownloadblog.com/wp-content/uploads/2020/01/hero-tetris-2048x1024.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.2,
                  ),
                  AnimatedBuilder(
                    animation: _colorAnimation,
                    builder: (context, child) => ElevatedButton(
                      onPressed: startGame,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color?>(
                          _colorAnimation.value,
                        ),
                      ),
                      child: const Text(
                        'Play Game',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
