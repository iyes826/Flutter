import 'package:flutter/material.dart';
import 'package:rsp_game/game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;

  const GameResult({Key? key, required this.isDone, this.result, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(result!.displayString, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
          SizedBox(height: 8),
          TextButton(onPressed: () => callback.call(), child: Text('다시하기', style: TextStyle(fontSize: 24),),)
        ],
      );
    }
    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택해주세요.',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }
}
