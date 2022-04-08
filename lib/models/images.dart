import 'package:flutter/cupertino.dart';

class Images {
  final String? img;

  Images({this.img});

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      img: json['source_url'] ?? '',
    );
  }
}
