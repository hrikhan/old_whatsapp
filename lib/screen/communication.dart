import 'package:flutter/material.dart';

class Communication extends StatelessWidget {
  const Communication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'community',
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 70,
            color: Colors.grey[200],
            child: ListTile(
              leading: Stack(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Container(
                      child: Icon(
                        Icons.groups_2_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.add))),
                ],
              ),
              title: Text(
                'New group',
                style: TextStyle(fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
