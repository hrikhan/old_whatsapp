import 'package:flutter/material.dart';

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 70,
            color: Colors.grey[200],
            child: ListTile(
              leading: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.black,
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
                'your status',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 600,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 300,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Image(
                    image: NetworkImage(
                      'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
                    ),
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          )
        ],
      ),
    ));
  }
}
