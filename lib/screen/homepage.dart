import 'package:flutter/material.dart';
import 'package:whats_app_clone/screen/calls.dart';
import 'package:whats_app_clone/screen/chat.dart';
import 'package:whats_app_clone/screen/communication.dart';
import 'package:whats_app_clone/screen/update.dart';
import 'package:whats_app_clone/utils/colors.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: customcolors.primary,
            title: Row(
              children: [
                const Text(
                  'WhatsApp ',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text('plus',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.limeAccent))
              ],
            ),
            actions: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  )),
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  color: Colors.white,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: Text("New group"),
                        value: "New group",
                      ),
                      PopupMenuItem(child: Text("New broadcast")),
                      PopupMenuItem(child: Text("WhatsApp Web")),
                      PopupMenuItem(child: Text("Starred messages")),
                      PopupMenuItem(child: Text("Settings")),
                      PopupMenuItem(child: Text("Log out"))
                    ];
                  })
            ],
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.white,
                unselectedLabelStyle: TextStyle(fontSize: 17),
                unselectedLabelColor: Colors.white60,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    icon: Icon(Icons.groups),
                  ),
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                ])),
        body: TabBarView(
          children: [Communication(), Chat(), Update(), Calls()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(context: context, builder: (context) => const Chat());
          },
          backgroundColor: customcolors.primary,
          child: const Icon(Icons.message, color: Colors.white),
        ),
      ),
    );
  }
}
