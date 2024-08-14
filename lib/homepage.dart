import 'package:flutter/material.dart';
import 'package:whatsapp_desktop_ui/pages/chats.dart';
import 'package:whatsapp_desktop_ui/pages/chatsbar.dart';
import 'package:whatsapp_desktop_ui/pages/leftbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 59, 58, 58),
        leading: Icon(
          Icons.add_ic_call_outlined,
          weight: BorderSide.strokeAlignOutside,
          color: Color.fromARGB(255, 157, 241, 160),
        ),
      ),
      body: Row(
        children: [
          Leftbar(),
          Chatbar(),
          Chats()
        ],
      ),
    );
  }
}
