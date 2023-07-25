import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostView extends StatefulWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 330,
        child: PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page; // 當頁面改變時更新 _currentPage 變數
            });
          },
          children: <Widget>[
            Image.asset('images/p1.jpg'),
            Image.asset('images/p2.jpg'),
            Image.asset('images/p3.jpg'),
          ],
        ),
      ),
      Positioned(
        top: 330 * 0.5 - 10, // Adjust these as needed
        left: 10,
        child: Visibility(
          visible: _currentPage > 0,
          child: IconButton(
            icon: const Icon(FontAwesomeIcons.circleChevronLeft, size: 26, color: Color(0xffdbdcdc)),
            onPressed: () {
              _currentPage -= 1;
              _pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ),
      ),
      Positioned(
        top: 330 * 0.5 - 10,
        right: 10,
        child: Visibility(
          visible: _currentPage < 2,
          child: IconButton(
            icon: const Icon(FontAwesomeIcons.circleChevronRight, size: 26, color: Color(0xffdbdcdc)),
            onPressed: () {
              _currentPage += 1;
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ),
      ),
    ]);
  }
}
