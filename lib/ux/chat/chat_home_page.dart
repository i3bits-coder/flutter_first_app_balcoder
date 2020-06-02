import 'package:flutter/material.dart';
import 'package:flutter_first_app_balcoder/ux/chat/chat_detail_page.dart';
import 'package:flutter_first_app_balcoder/ux/chat/chat_item.dart';

class ChatHomePage extends StatefulWidget {
  @override
  _ChatHomePageState createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ChatDetailPage()));
          },
          child: ChatItem(
              title: "Text",
              subtitle: 'subtext',
              urlAvatar:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/768px-Facebook_Logo_%282019%29.png'),
        )
      ],
    );
  }
}
