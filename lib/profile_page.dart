import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
            EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight+20),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: AssetImage('Assets/profile_user.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Pranish Ramteke',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFff6f00),
                            blurRadius: 2,
                            spreadRadius: 1,
                            offset: Offset(0, 1))
                      ]),
                  height: 150,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Image.asset('Assets/wallet.png'),
//                              onPressed:()=> Navigator.of(context).push(
//                                  MaterialPageRoute(
//                                      builder: (_) => WalletPage())),
                            ),
                            Text(
                              'Wallet',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Image.asset('Assets/truck.png'),
//                              onPressed: () => Navigator.of(context).push(
//                                  MaterialPageRoute(builder: (_) => TrackingPage())),
                            ),
                            Text(
                              'Shipped',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Image.asset('Assets/card.png'),
//                              onPressed:()=> Navigator.of(context).push(
//                                  MaterialPageRoute(
//                                      builder: (_) => PaymentPage())),
                            ),
                            Text(
                              'Payment',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Image.asset('Assets/contact_us.png'), onPressed: () {},
                            ),
                            Text(
                              'Support',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Settings'),
                  subtitle: Text('Privacy and logout'),
                  leading: Image.asset('Assets/settings_icon.png', fit: BoxFit.scaleDown, width: 30, height: 30,),
                  trailing: Icon(Icons.chevron_right, color: Color(0xFFff6f00)),
//                  onTap: () => Navigator.of(context).push(
//                      MaterialPageRoute(builder: (_) => SettingsPage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Help & Support'),
                  subtitle: Text('Help center and legal support'),
                  leading: Image.asset('Assets/support.png'),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Color(0xFFff6f00),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('FAQ'),
                  subtitle: Text('Questions and Answer'),
                  leading: Image.asset('Assets/faq.png'),
                  trailing: Icon(Icons.chevron_right, color: Color(0xFFff6f00)),
//                  onTap: () => Navigator.of(context).push(
//                      MaterialPageRoute(builder: (_) => FaqPage())),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xFFfccf3e),
        backgroundColor: Colors.white,
        height: 50,
        items: [
          Icon(EvaIcons.homeOutline, size: 30, color: Color(0xFFff6f00),),
          Icon(EvaIcons.searchOutline, size: 30, color: Color(0xFFff6f00)),
          Icon(EvaIcons.plus, size: 30, color: Color(0xFFff6f00)),
          Icon(Icons.attach_money, size: 30, color: Color(0xFFff6f00)),
        ],
        onTap: (index){
          if(index == 0){
            Navigator.of(context).pushNamed('/homepage');
          }
          if(index == 1){
            Navigator.of(context).pushNamed('/signup');
          }
          if(index == 2){
            Navigator.of(context).pushNamed('/signup');
          }
          if(index == 3){
            Navigator.of(context).pushNamed('/signup');
          }
        },
      ),
    );
  }
}