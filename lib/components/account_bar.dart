import 'package:flutter/material.dart';
import './rounded_image.dart';

class AccountBar extends StatelessWidget {
  const AccountBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const RoundedImage(imagePath: 'images/avatar.jpg'),
          const Padding(padding: EdgeInsets.only(right: 8)),
          Row(
            children: [
              const Text('imqingfeng'),
              const Padding(padding: EdgeInsets.only(right: 3)),
              Image.asset('images/verified.png', width: 12, height: 12),
              const Padding(padding: EdgeInsets.only(right: 3)),
              const Text('•'),
              const Padding(padding: EdgeInsets.only(right: 3)),
              const Text('兩天'),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.more_horiz),
            iconSize: 20,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
