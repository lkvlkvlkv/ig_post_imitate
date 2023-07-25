import 'package:flutter/material.dart';

class LikeBar extends StatelessWidget {
  const LikeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      height: 28,
      child: const Row(
        children: [
          Text('1.9', style: TextStyle(fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.only(left: 4)),
          Text('萬個讚', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
