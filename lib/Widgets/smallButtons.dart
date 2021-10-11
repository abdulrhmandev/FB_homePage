import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    Key? key,
    required this.size,
    required this.title,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: 30,
      decoration: BoxDecoration(
          color: Color(0xff292F3B),
          borderRadius: BorderRadius.circular(8)),
      width: size.width * 0.20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Image.asset(
            image,
            // width:,
          ),
          SizedBox(
            width: 11,
          ),
          FittedBox(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color:
                  Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          )
        ],
      ),
    );
  }
}