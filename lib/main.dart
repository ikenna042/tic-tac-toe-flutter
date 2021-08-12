import 'package:flutter/material.dart';
import 'package:tic_tac_toe/board_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Stack(
                  children: [Image.asset('images/board.png'), _boardTiles()]))),
    );
  }

  Widget _boardTiles() {
    return Builder(builder: (context) {
      final boardDimension = MediaQuery.of(context).size.width;
      final titleDimension = boardDimension / 3;

      return Container(
        width: boardDimension,
        height: boardDimension,
        child: Column(
          children: [
            Row(
              children: [
                BoardTile(dimension: titleDimension),
                BoardTile(dimension: titleDimension),
                BoardTile(dimension: titleDimension)
              ],
            ),
            Row(
              children: [
                BoardTile(dimension: titleDimension),
                BoardTile(dimension: titleDimension),
                BoardTile(dimension: titleDimension)
              ],
            ),
            Row(
              children: [
                BoardTile(dimension: titleDimension),
                BoardTile(dimension: titleDimension),
                BoardTile(dimension: titleDimension)
              ],
            )
          ],
        ),
      );
    });
  }
}
