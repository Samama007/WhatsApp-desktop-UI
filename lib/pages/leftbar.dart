import 'package:flutter/material.dart';

class Leftbar extends StatelessWidget {
  const Leftbar({super.key});

  @override
  Widget build(BuildContext context) {
    double mywidth = MediaQuery.of(context).size.width;
    return Container(
      // width: 45,
      width: mywidth * 0.027,
      color: const Color.fromRGBO(32, 32, 32, 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 23,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                print('menu');
              },
              child: Icon(
                Icons.menu_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Icon(
              Icons.message,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Icon(
              Icons.call,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Icon(
              Icons.camera,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Divider(
            endIndent: 6,
            indent: 6,
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Icon(
              Icons.circle_outlined,
              color: Colors.deepPurple,
              size: 30,
            ),
          ),
          SizedBox(height: 450),
          Center(
            child: Icon(
              Icons.star_border,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Icon(
              Icons.blind_sharp,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(height: 10),
          Divider(
            endIndent: 6,
            indent: 6,
          ),
          SizedBox(height: 10),
          Center(
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(height: 10),
          Center(child: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR92KhCAudTTic5ootsb5CJjyOF486SIpMdVA&s')))
        ],
      ),
    );
  }
}
