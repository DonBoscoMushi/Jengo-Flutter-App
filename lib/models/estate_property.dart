import 'package:easy_localization/easy_localization.dart';

import '../config/wp_config.dart';

class EstateProperty {
  final int? id;
  final String? title;
  final String? content;
  final String? link;
  final String? datePosted;
  final String? image;
  final String? tags;
  final String? displayName;
  final String? propertyPrice;
  final String? propertyLabel;
  final String? propertyAddress;
  final String? propertyRooms;
  final String? propertyBedrooms;
  final String? propertyGarage;
  final String? propertyGarageSize;

  EstateProperty(
      {this.id,
      this.title,
      this.content,
      this.link,
      this.datePosted,
      this.image,
      this.tags,
      this.displayName,
      this.propertyPrice,
      this.propertyLabel,
      this.propertyAddress,
      this.propertyRooms,
      this.propertyBedrooms,
      this.propertyGarage,
      this.propertyGarageSize});

/*
  important ids
  id
  title
  content
  link
  date_posted
  featured_image [url]
  author [] display_name
  property_price
  property_label
  property_address
  property_rooms
  property_bedrooms
  property-garage
  property-garage-size"

   */

  factory EstateProperty.fromJson(Map<String, dynamic> json) {
    return EstateProperty(
        id: json['id'] ?? 0,
        title: json['title'] ?? '',
        content: json['content'] ?? '',
        link: json['link'] ?? 'empty',
        datePosted: DateFormat('dd MMMM, yyyy', 'en_US')
            .format(DateTime.parse(json["date_posted"]))
            .toString(),
        image: json['featured_image']['url'] != ""
            ? json['featured_image']['url']
            : WpConfig.randomPostFeatureImage,
        tags: "A tag should be here",
        displayName: json['author']['display_name'] ?? '',
        propertyPrice: json['property_price'] ?? 'empty',
        propertyLabel: json['property_label'] ?? 'empty',
        propertyAddress: json['property_address'] ?? 'empty',
        propertyRooms: json['property_rooms'] ?? 'empty',
        propertyBedrooms: json['property_bedrooms'] ?? 'empty',
        propertyGarage: json['property-garage'] ?? 'empty',
        propertyGarageSize: json['property-garage-size'] ?? 'empty');
  }
}
