import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFfccf3e),
      ),
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 5, 0, 10),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/profile');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('Assets/profile_user.jpg'),
                    radius: 50,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: Text(
                    'Pranish Ramteke',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/profile');
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(thickness: 1, color: Color(0xFFff6f00)),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text(
                  'Your Orders',
                  style: TextStyle(
                    color: Color(0xFFff6f00),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text(
                  "Today's offers",
                  style: TextStyle(
                      color: Color(0xFFff6f00),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(thickness: 1, color: Color(0xFFff6f00)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fashion', style: TextStyle(fontSize: 15)),
                    SizedBox(height: 10),
                    Text('Books', style: TextStyle(fontSize: 15)),
                    SizedBox(height: 10),
                    Text('Mobiles', style: TextStyle(fontSize: 15)),
                    SizedBox(height: 10),
                    Text('Accessories', style: TextStyle(fontSize: 15)),
                    SizedBox(height: 10),
                    Text('Laptops', style: TextStyle(fontSize: 15)),
                    SizedBox(height: 10),
                    Text('SmartPhones', style: TextStyle(fontSize: 15)),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
          Divider(thickness: 1, color: Color(0xFFff6f00)),
          SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Text(
                        'WishList',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFff6f00),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      child: Text(
                        'Notifications',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFff6f00),
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/notifications_page');
                      },
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      child: Text(
                        'FAQ',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFff6f00),
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: (){
                        Navigator.of(context).pushNamed('/faq');
                      },
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFff6f00),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
