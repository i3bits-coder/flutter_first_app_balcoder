import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  ChatItem({this.title, this.subtitle, this.urlAvatar});

  final String title;
  final String subtitle;
  final String urlAvatar;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        subtitle: (Text(subtitle)),
        leading: CircleAvatar(
          radius: 26.0,
          child: CachedNetworkImage(
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover)),
            ),
            imageUrl: urlAvatar,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ));
  }
}
