import 'package:flutter/material.dart';
import 'package:rsp_game/game/cpu_input.dart';
import 'package:rsp_game/game/game_result.dart';
import 'package:rsp_game/game/user_input.dart';

class GameBody extends StatefulWidget {
  const GameBody({Key? key}) : super(key: key);

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;

  @override
  void initState() {
    super.initState();
    isDone = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput(isDone: isDone)),
        Expanded(child: GameResult(isDone: isDone)),
        Expanded(child: UserInput(isDone: isDone)),
      ],
    );
  }
}