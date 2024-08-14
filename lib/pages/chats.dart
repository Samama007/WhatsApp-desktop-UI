import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    double mywidth = MediaQuery.of(context).size.width;

    return Expanded(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(54, 53, 53, 1),
              ),
              // width: 1555,
              width: mywidth * 0.8,
              height: 65,
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250'),
                  ),
                  title: Text(
                    'Samama',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'last seen today at 7:45 pm',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      height: double.infinity,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 68, 68, 68),
                          border: Border.all(
                            color: Color.fromRGBO(44, 44, 44, 1),
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Icon(
                        Icons.video_call_outlined,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 68, 68, 68),
                          border: Border.all(
                            color: Color.fromRGBO(44, 44, 44, 1),
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 23,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ],
      ),
      Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://r4.wallpaperflare.com/wallpaper/792/639/808/pattern-monochrome-telegram-logo-cats-hd-wallpaper-18d68d4880c0cc48c07ce18e38a244ba.jpg'),
              fit: BoxFit.cover,
              opacity: 0.92,
            ),
          ),
          child: ListView.builder(
            itemCount: 70,
            itemBuilder: (context, index) {
              bool isSent = index % 2 == 0;
              return Align(
                alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  padding: EdgeInsets.all(10),
                  constraints: BoxConstraints(maxWidth: mywidth * 0.6),
                  decoration: BoxDecoration(
                    color: isSent ? Color.fromARGB(255, 0, 92, 75) : Color.fromARGB(255, 50, 50, 50),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: isSent ? Radius.circular(10) : Radius.circular(0),
                      bottomRight: isSent ? Radius.circular(0) : Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    isSent ? 'You have no honour!' : "And you're a slave to it!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 61, 61, 61),
        ),
        child: TextFormField(
          decoration: InputDecoration(
              focusColor: Color.fromARGB(255, 61, 61, 61),
              fillColor: Color.fromARGB(255, 61, 61, 61),
              hoverColor: Color.fromARGB(255, 61, 61, 61),
              hintText: 'Type a message',
              hintStyle: TextStyle(color: Colors.white),
              suffixIcon: Icon(
                Icons.mic,
                color: Colors.white,
              ),
              border: OutlineInputBorder(),
              icon: GestureDetector(
                onTap: () {
                  print('emoji');
                },
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.white,
                ),
              )),
        ),
      )
    ]));
  }
}
