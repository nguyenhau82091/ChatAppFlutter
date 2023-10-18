import 'package:chat_app_clone/pages/ChatPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatApp Clone'),
        actions: [
          IconButton(
              onPressed: () {
                print('search');
              },
              icon: Icon(Icons.search)),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New group"),
                value: "New group",
              ),
              PopupMenuItem(
                child: Text("New broadcard"),
                value: "New broadcard",
              ),
              PopupMenuItem(
                child: Text("What's app web"),
                value: "What's app web",
              ),
              PopupMenuItem(
                child: Text("Started messages"),
                value: "Started messages",
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: "Settings",
              ),
            ];
          })
        ],
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: "CHAT",
          ),
          Tab(
            text: "STATUS",
          ),
          Tab(
            text: 'CALLS',
          )
        ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        Text("Camera"),
        ChatPage(),
        Text("Status"),
        Text("Calls")
      ]),
    );
  }
}
