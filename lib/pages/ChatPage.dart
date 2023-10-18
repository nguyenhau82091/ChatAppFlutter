import 'package:chat_app_clone/customUI/CustomCard.dart';
import 'package:chat_app_clone/models/ChatModel.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Dev Stack",
        icon: "people.svg",
        isGroup: false,
        time: "4:00",
        currentMessage: "Hi everyone."),
    ChatModel(
        name: "Nguyen Hau",
        icon: "people.svg",
        isGroup: false,
        time: "10:00",
        currentMessage: "Hi everyone."),
    ChatModel(
        name: "Dev Group",
        icon: "group.svg",
        isGroup: true,
        time: "14:00",
        currentMessage: "Hi everyone on this group."),
    ChatModel(
        name: "Nguyen Hau",
        icon: "people.svg",
        isGroup: false,
        time: "12:00",
        currentMessage: "Hi everyone."),
    ChatModel(
        name: "Nguyen Hau Friends",
        icon: "group.svg",
        isGroup: true,
        time: "8:00",
        currentMessage: "Hi Nguyen Hau."),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello");
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) => CustomCard(chatModel: chats[index])),
    );
  }
}
