import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  Calls({super.key});

  List<Map<String, dynamic>> calls = [
    {
      'name': 'Ayesha Siddiqua',
      'time': 'Today, 9:00 AM',
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
      'type': 'audio',
      'direction': 'incoming',
    },
    {
      'name': 'Rahim Uddin',
      'time': 'Yesterday, 8:00 PM',
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
      'type': 'video',
      'direction': 'outgoing',
    },
    {
      'name': 'Karim Khan',
      'time': 'Yesterday, 7:30 PM',
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
      'type': 'audio',
      'direction': 'incoming',
    },
    {
      'name': 'Fatema Begum',
      'time': 'Yesterday, 6:00 PM',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAzBE_P3rPclK8gJnC-y1Mq7kNOvyL8yUHlg&s',
      'type': 'video',
      'direction': 'outgoing',
    },
    {
      'name': 'Jamal Hossain',
      'time': 'Yesterday, 5:00 PM',
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
      'type': 'audio',
      'direction': 'incoming',
    },
    {
      'name': 'Shirin Akter',
      'time': 'Yesterday, 4:00 PM',
      'image':
          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
      'type': 'video',
      'direction': 'outgoing',
    },
    {
      'name': 'Mizanur Rahman',
      'time': 'Yesterday, 3:00 PM',
      'image': '',
      'type': 'audio',
      'direction': 'incoming',
    },
    {
      'name': 'Nasima Khatun',
      'time': 'Yesterday, 2:00 PM',
      'image': 'https://images.unsplash.com/photo-1612838320303-4b3b3b3b3b3b',
      'type': 'video',
      'direction': 'outgoing',
    },
    {
      'name': 'Abdul Karim',
      'time': 'Yesterday, 1:00 PM',
      'image': 'https://images.unsplash.com/photo-1612838320303-4b3b3b3b3b3b',
      'type': 'audio',
      'direction': 'incoming',
    },
    {
      'name': 'Rokeya Begum',
      'time': 'Yesterday, 12:00 PM',
      'image': 'https://images.unsplash.com/photo-1612838320303-4b3b3b3b3b3b',
      'type': 'video',
      'direction': 'outgoing',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                calls[index]['image'],
              ),
            ),
            title: Text(
              calls[index]['name'],
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                calls[index]['direction'] != 'outgoing'
                    ? Icon(Icons.call_received)
                    : Icon(Icons.call_missed_outgoing),
                Text(calls[index]['time']),
              ],
            ),
            trailing: calls[index]['type'] == 'audio'
                ? Icon(
                    Icons.call,
                  )
                : Icon(
                    Icons.videocam,
                  ),
          );
        },
      ),
    );
  }
}
