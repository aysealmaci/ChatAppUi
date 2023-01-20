import 'package:chat_app/style.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 0, 166),
      body: ListView(
        children: [
          customAppBar(context),
          header(),
          Container(
            height: appSize.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
            child: Column(
              children: [
                Container(
                  height: appSize.height - 335,
                  padding: EdgeInsets.only(top: 30),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryText(
                                font_size: 12,
                                text_color: Colors.grey,
                                main_text: '18.35'),
                            ChatContent(
                              msg: "Hello",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                FooterInput()
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding header() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20, bottom: 40),
      child: Row(
        children: [
          PrimaryText(
              font_size: 40,
              text_color: Colors.white,
              main_text: "Ayşe Almacı"),
          Spacer(),
          Row(
            children: [
              RawMaterialButton(
                fillColor: Colors.white,
                onPressed: () => {},
                child: Icon(
                  Icons.call,
                  color: Colors.purple,
                ),
                shape: CircleBorder(),
                elevation: 2.0,
                padding: EdgeInsets.all(10),
              ),
              RawMaterialButton(
                fillColor: Colors.white,
                onPressed: () => {},
                child: Icon(
                  Icons.video_call,
                  color: Colors.purple,
                ),
                shape: CircleBorder(),
                elevation: 2.0,
                padding: EdgeInsets.all(10),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding customAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          TextButton(
              onPressed: (() => {Navigator.pop(context)}),
              child: PrimaryText(
                  font_size: 12, text_color: Colors.white, main_text: 'back'))
        ],
      ),
    );
  }
}

class ChatContent extends StatelessWidget {
  const ChatContent({
    Key? key,
    required this.msg,
  }) : super(key: key);
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(0),
          )),
      child:
          PrimaryText(main_text: msg, font_size: 12, text_color: Colors.black),
    );
  }
}

class FooterInput extends StatelessWidget {
  const FooterInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(width: 0, style: BorderStyle.none)),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          hintText: 'Type a message',
          hintStyle: TextStyle(color: Colors.purple),
          suffixIcon: RawMaterialButton(
            fillColor: Colors.white,
            onPressed: () => {},
            child: Icon(
              Icons.send,
              color: Colors.purple,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            padding: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
