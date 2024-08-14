import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Chatbar extends StatefulWidget {
  const Chatbar({super.key});

  @override
  ChatbarState createState() => ChatbarState();
}

class ChatbarState extends State<Chatbar> {
  List<dynamic> users = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    final response = await http.get(Uri.parse('https://randomuser.me/api/?results=50'));
    if (response.statusCode == 200) {
      setState(() {
        users = json.decode(response.body)['results'];
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load users');
    }
  }

  @override
  Widget build(BuildContext context) {
    double mywidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(color: Color.fromRGBO(44, 44, 44, 1)),
      padding: EdgeInsets.only(left: 23, top: 20, right: 20),
      width: mywidth * 0.17,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              SizedBox(width: mywidth * 0.05),
              Icon(
                Icons.pending_actions_outlined,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(width: mywidth * 0.02),
              Icon(
                Icons.menu,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(61, 61, 61, 1),
              border: Border(bottom: BorderSide(color: Colors.white)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search or start a new chat',
                icon: Icon(Icons.search, color: Colors.white),
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      // print(user['email']);
                      return ListTile(
                        title: Text(
                          '${user['name']['first']} ${user['name']['last']}',
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          user['location']['country'],
                          style: TextStyle(color: Colors.white60),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(user['picture']['thumbnail']),
                        ),
                        trailing: Text(
                          '8:35 pm',
                          style: TextStyle(color: Colors.white60),
                        ),
                      );
                    },
                  ),
          )
        ],
      ),
    );
  }
}
