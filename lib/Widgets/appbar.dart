import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff0E1424),
      elevation: 0,
      leading: Image.asset('assets/images/facebook_logo.png'),
      actions: [
        Image.asset('assets/images/search.png'),
        Image.asset('assets/images/note.png'),
        Image.asset('assets/images/messanger.png'),
        Image.asset('assets/images/pic.png'),
      ],
    );

  }

}
