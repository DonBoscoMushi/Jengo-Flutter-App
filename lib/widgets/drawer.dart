import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wordpress_app/blocs/settings_bloc.dart';
import 'package:wordpress_app/config/config.dart';
import 'package:wordpress_app/config/wp_config.dart';
import 'package:wordpress_app/pages/category_based_articles.dart';
import 'package:wordpress_app/services/app_service.dart';
import 'package:wordpress_app/utils/next_screen.dart';
import '../blocs/category_bloc.dart';
import '../models/category.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final d = context.watch<CategoryBloc>().categoryData;
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 250,
                width: double.infinity,
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 1),
                      child: Image(
                          height: 200,
                          width: 200,
                          fit: BoxFit.contain,
                          image: AssetImage(Config.splash)),
                    ),
                    Text('Jengo Real Estate'),
                  ],
                )),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  ListTile(
                    isThreeLine: false,
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      Icons.email_outlined,
                      size: 22,
                    ),
                    horizontalTitleGap: 5,
                    title: Text(
                      'contact us',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: () {
                      Navigator.pop(context);
                      AppService().openEmailSupport(context);
                    },
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      Icons.link_outlined,
                      size: 22,
                    ),
                    horizontalTitleGap: 5,
                    title: Text(
                      'our website',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: () {
                      Navigator.pop(context);
                      AppService()
                          .openLinkWithCustomTab(context, WpConfig.websiteUrl);
                    },
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      Feather.facebook,
                      size: 22,
                    ),
                    horizontalTitleGap: 5,
                    title: Text(
                      'facebook page',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: () {
                      Navigator.pop(context);
                      AppService().openLink(context, Config.facebookPageUrl);
                    },
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      Feather.twitter,
                      size: 22,
                    ),
                    horizontalTitleGap: 5,
                    title: Text(
                      'twitter',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: () {
                      Navigator.pop(context);
                      AppService().openLink(context, Config.twitterUrl);
                    },
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey[300],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 5, top: 5, right: 3, bottom: 5),
              child: Text(
                '@Jengo Real Estate',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ).tr(),
            ),
          ],
        ),
      ),
    );
  }
}
