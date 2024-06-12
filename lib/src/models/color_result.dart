import 'package:flutter/material.dart';

class ColorResult {
  final int id;
  final String title;
  final String username;
  final int numViews;
  final String hexCode;
  final bool isLiked;

  const ColorResult({
    required this.id,
    required this.title,
    required this.username,
    required this.numViews,
    required this.hexCode,
    this.isLiked = false,
  });

  factory ColorResult.fromJson(Map<String, dynamic> json) {
    return ColorResult(
      id: json['id'],
      title: json['title'],
      username: json['userName'],
      numViews: json['numViews'],
      hexCode: "#${json['hex']}",
    );
  }

  Color get color {
    String hex = hexCode.replaceAll('#', '');
    if (hex.length == 6) {
      hex = 'FF$hex';
    }
    if (hex.length != 8) {
      throw const FormatException("Invalid hex color");
    }
    return Color(int.parse(hex, radix: 16));
  }

  ColorResult like(bool value) {
    return ColorResult(
      id: id,
      title: title,
      username: username,
      numViews: numViews,
      hexCode: hexCode,
      isLiked: value,
    );
  }
}
