import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Whatsapp"),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(child: Text("Chat")),
              Tab(child: Text("Status")),
              Tab(child: Text("Call")),
            ]),
            actions: [
              const SizedBox(width: 20),
              const Icon(Icons.search),
              const SizedBox(width: 20),
              const SizedBox(width: 20),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => const [
                  PopupMenuItem(child: Text("New Group")),
                  PopupMenuItem(child: Text("Linked a device")),
                  PopupMenuItem(child: Text("Settings")),
                ],
              ),
              const SizedBox(width: 20),
            ],
          ),
          body: TabBarView(
            children: [
              const Text("camera"),
              ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                    ),
                    title: Text("Arayan Memon Sec2"),
                    subtitle: Text("aby client ko done kya ya nahi"),
                    trailing: Text("9:56 PM"),
                  );
                },
              )
            ],
          ),
        ));
  }
}
