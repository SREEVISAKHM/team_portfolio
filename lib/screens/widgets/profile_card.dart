import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            width: 260.0,
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
        ),
        Positioned(
          top: .0,
          left: .0,
          right: .0,
          child: Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.amber,
            ),
          ),
        ),
      ],
    );
  }
}
