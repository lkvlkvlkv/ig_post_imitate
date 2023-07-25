import 'package:flutter/material.dart';
import './screens/ig_post_page.dart';

void main() {
  runApp(const IgPostApp());
}

class IgPostApp extends StatelessWidget {
  const IgPostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Instagram Post',
      home: IgPostPage(),
    );
  }
}
