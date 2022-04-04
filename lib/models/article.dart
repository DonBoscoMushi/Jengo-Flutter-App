import 'package:easy_localization/easy_localization.dart';
import 'package:jiffy/jiffy.dart';
import 'package:wordpress_app/config/wp_config.dart';

class Article {
  final int? id;
  final String? title;
  final String? content;
  final String? image;
  final String? video;
  final String? author;
  final String? avatar;
  final String? category;
  final String? date;
  final String? timeAgo;
  final String? link;
  final int? catId;
  final List? tags;
  final String? size;
  final String? rooms;
  final String? bedrooms;
  final String? gerage;
  final String? gerageSize;
  final String? address;


  Article(
      {this.id,
      this.title,
      this.content,
      this.image,
      this.video,
      this.author,
      this.avatar,
      this.category,
      this.date,
      this.timeAgo,
      this.link,
      this.catId,
      this.tags,
      this.size,
      this.rooms,
      this.bedrooms,
      this.gerage,
      this.gerageSize,
      this.address     
      
      });

  factory Article.fromJson(Map<String, dynamic> json) {
    var price = json['property_price'] + " " + json['property_label'];
    return Article(
        // id: json['id'] ?? 0,
        // title: json['title']['rendered'] ?? '',
        // content: json['content']['rendered'] ?? '',
        // image: json['custom']["featured_image"] != ""
        //     ? json['custom']["featured_image"]
        //     : WpConfig.randomPostFeatureImage,
        // video: json['custom']['td_video'] ?? '',
        // author: json['custom']['author']['name'] ?? '',
        // avatar: json['custom']['author']['avatar'] ??
        //     'https://icon-library.com/images/avatar-icon/avatar-icon-27.jpg',
        // date: DateFormat('dd MMMM, yyyy', 'en_US')
        //     .format(DateTime.parse(json["date"]))
        //     .toString(),
        // //timeAgo: Jiffy(json["date"]).fromNow(),
        // timeAgo: Jiffy(json['date']).add(hours: 6).fromNow(),
        // link: json['link'] ?? 'empty',
        // category: json["custom"]["categories"][0]["name"] ?? '',
        // catId: json["custom"]["categories"][0]["cat_ID"] ?? 0,
        // tags: json['tags']);

        id: json['id'] ?? 0,
        title: json['title'] ?? '',
        content: json['content'] ?? '',
        image: json['featured_image']['url'] != ""
            ? json['featured_image']['url']
            : WpConfig.randomPostFeatureImage,
        video: '',
        author: json['author']['display_name'] ?? 'empty',
        avatar: json['featured_image']['url'] ??
            'https://icon-library.com/images/avatar-icon/avatar-icon-27.jpg',
        date: DateFormat('dd MMMM, yyyy', 'en_US')
            .format(DateTime.parse(json["date_posted"]))
            .toString(),
        //timeAgo: Jiffy(json["date"]).fromNow(),
        timeAgo: '',
        link: json['link'] ?? 'empty',
        category: price ?? '',
        catId: json["id"] ?? 0,
        tags: json['author']['roles'] ?? '',
        size: json['property_size'] ?? '',
        rooms: json['property_rooms'] ?? '',
        bedrooms: json['property_bedrooms'] ?? '',
        gerage: json['property-garage'] ?? '',
        gerageSize: json['property-garage-size'] ?? '',
        address: json['property_address'] ?? ''
        );
  }
}
