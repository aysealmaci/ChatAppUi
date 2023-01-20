import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final String? main_text;
  final Color text_color;
  final FontWeight font_weight;
  final double font_size;
  final TextOverflow overflow;

  const PrimaryText(
      {required this.font_size,
      required this.text_color,
      this.font_weight: FontWeight.bold,
      required this.main_text,
      this.overflow: TextOverflow.visible});

  @override
  Widget build(BuildContext context) {
    return Text(
      main_text!,
      style: TextStyle(
          color: text_color, fontWeight: FontWeight.bold, fontSize: font_size),
    );
  }
}

class ProfilePhoto extends StatelessWidget {
  final String profile_photo_path;
  final double width;
  final double height;

  const ProfilePhoto({
    this.width: 60,
    this.height: 60,
    required this.profile_photo_path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset('assets/1.jpg', fit: BoxFit.fill),
    );
  }
}

class Avatar extends StatelessWidget {
  final String? avatar_path;
  final double width;
  final double height;

  const Avatar({
    this.width: 50,
    this.height: 300,
    required this.avatar_path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: AssetImage(avatar_path!),
            fit: BoxFit.cover,
          )),
    );
  }
}
