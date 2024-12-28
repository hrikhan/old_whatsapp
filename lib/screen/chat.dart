import 'package:flutter/material.dart';
import 'package:whats_app_clone/utils/colors.dart';

class Chat extends StatelessWidget {
  Chat({super.key});
  List<Map<String, dynamic>> chatList = [
    {
      'name': 'Rahim',
      'time': '9:30 AM',
      'message': 'কেমন আছেন?',
      'messageCount': 2,
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
    },
    {
      'name': 'Karim',
      'time': '10:15 AM',
      'message': 'আজকের ক্লাস কেমন হলো?',
      'messageCount': 0,
      'image':
          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    },
    {
      'name': 'Sumi',
      'time': '11:00 AM',
      'message': 'নতুন আপডেট পেয়েছি?',
      'messageCount': 3,
      'image':
          'https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg',
    },
    {
      'name': 'Akash',
      'time': '12:45 PM',
      'message': 'কাল দেখা হবে?',
      'messageCount': 0,
      'image':
          'https://pics.craiyon.com/2023-11-26/oMNPpACzTtO5OVERUZwh3Q.webp',
    },
    {
      'name': 'Runa',
      'time': '1:30 PM',
      'message': 'চা খাবেন?',
      'messageCount': 4,
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
    },
    {
      'name': 'Hasan',
      'time': '2:15 PM',
      'message': 'আপনার প্রোজেক্ট কেমন চলছে?',
      'messageCount': 1,
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
    },
    {
      'name': 'Tania',
      'time': '3:00 PM',
      'message': 'আমাকে একটু সাহায্য করতে পারবেন?',
      'messageCount': 0,
      'image':
          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    },
    {
      'name': 'Shahin',
      'time': '3:45 PM',
      'message': 'আমার কিছু প্রশ্ন আছে।',
      'messageCount': 2,
      'image':
          'https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg',
    },
    {
      'name': 'Rafiq',
      'time': '4:30 PM',
      'message': 'আজকের মিটিং কেমন হলো?',
      'messageCount': 0,
      'image':
          'https://pics.craiyon.com/2023-11-26/oMNPpACzTtO5OVERUZwh3Q.webp',
    },
    {
      'name': 'Mitu',
      'time': '5:15 PM',
      'message': 'দেখা করে কথা বলব?',
      'messageCount': 5,
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
    },
    {
      'name': 'Mitu',
      'time': '5:15 PM',
      'message': 'দেখা করে কথা বলব?',
      'messageCount': 5,
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
    },
    {
      'name': 'Mitu',
      'time': '5:15 PM',
      'message': 'দেখা করে কথা বলব?',
      'messageCount': 5,
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              maxRadius: 25,
              backgroundImage: NetworkImage(
                chatList[index]['image'],
              ),
            ),
            title: Text(
              chatList[index]['name'],
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(chatList[index]['message']),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(chatList[index]['time']),
                chatList[index]['messageCount'] == 0
                    ? SizedBox()
                    : Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: customcolors.primary,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            chatList[index]['messageCount'].toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      )
              ],
            ),
          );
        },
      ),
    );
  }
}
