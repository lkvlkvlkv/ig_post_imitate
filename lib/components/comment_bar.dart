import 'package:flutter/material.dart';

class TextInputWithPlaceholder extends StatefulWidget {
  const TextInputWithPlaceholder({Key? key}) : super(key: key);

  @override
  TextInputWithPlaceholderState createState() =>
      TextInputWithPlaceholderState();
}

class TextInputWithPlaceholderState extends State<TextInputWithPlaceholder> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            foregroundImage: AssetImage('images/user_avatar.jpg'),
            radius: 14,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: textEditingController,
              decoration: const InputDecoration(
                hintText: '留言⋯⋯',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                border: InputBorder.none,
              ),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              cursorColor: Colors.black,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
