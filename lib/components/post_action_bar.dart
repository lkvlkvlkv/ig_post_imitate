import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostActionBar extends StatelessWidget {
  const PostActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              alignment: Alignment.center,
              onPressed: () => {},
              icon: const Icon(FontAwesomeIcons.heart, size: 24)),
          const Padding(padding: EdgeInsets.only(left: 8)),
          IconButton(
              alignment: Alignment.center,
              onPressed: () => {},
              icon: const Icon(FontAwesomeIcons.comment, size: 24)),
          const Padding(padding: EdgeInsets.only(left: 8)),
          IconButton(
              alignment: Alignment.center,
              onPressed: () => {},
              icon: const Icon(FontAwesomeIcons.paperPlane, size: 24)),
          const Spacer(),
          IconButton(
              alignment: Alignment.center,
              onPressed: () => {},
              icon: const Icon(FontAwesomeIcons.bookmark, size: 24)),
        ],
      ),
    );
  }
}
