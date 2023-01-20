import 'package:chat_app/chat_page.dart';
import 'package:chat_app/consts.dart';
import 'package:chat_app/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 0, 166),
      body: ListView(
        children: [
          header(title_text: "Talk with\nEveryone!"),
          Container(
            padding: EdgeInsets.only(top: 40, left: 15, right: 20, bottom: 40),
            height: appSize.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 255, 255, 255)),
            child: ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) => ListTile(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => ChatPage())))
                },
                leading: Avatar(avatar_path: userList[index]['avatar']),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryText(
                        font_size: 25,
                        text_color: Colors.purple,
                        main_text: userList[index]['name']!,
                        font_weight: FontWeight.bold),
                    PrimaryText(
                        font_size: 12,
                        text_color: Colors.grey.shade400,
                        main_text: '18.35'),
                  ],
                ),
                subtitle: PrimaryText(
                    font_size: 15,
                    text_color: Colors.grey.shade600,
                    main_text: userList[index]['message']!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({
    Key? key,
    required this.title_text,
  }) : super(key: key);

  final String title_text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.only(top: 25, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryText(
            main_text: title_text,
            text_color: Colors.white,
            font_size: 30,
          ),
          /*SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: avatarList.length,
              itemBuilder: (context, index) =>
                  Avatar(avatar_path: avatarList[index]['avatar']),
            ),
          )*/
        ],
      ),
    );
  }
}
