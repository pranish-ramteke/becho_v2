import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  List picked = [false, false];
  int totalAmount = 0;

  pickToggle(index) {
    setState(() {
      picked[index] = !picked[index];
      getTotalAmount();
    });
  }

  getTotalAmount() {
    var count = 0;
    for (int i = 0; i < picked.length; i++) {
      if (picked[i]) {
        count = count + 1;
      }
      if (i == picked.length - 1) {
        setState(() {
          totalAmount = 248 * count;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Stack(children: [
            Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
              ),
              Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFffc107),
                ),
              ),
              Container(
                height: 250.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFffc107),
                ),
              ),

              Positioned(
                  top: 100.0,
                  left: 15.0,
                  child: Text(
                    'Shopping Cart',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  )),


              Positioned(
                top: 150.0,
                child: Column(
                  children: <Widget>[
                    itemCard('iPad Mini', 'gray', '248',
                        'Assets/product1.jpg', true, 0),
                    itemCard('iPad Pro', 'gray', '248',
                        'Assets/product2.jpg', true, 1),
                    itemCard('iPhone Max Pro', 'gray', '248',
                        'Assets/product3.jpg', false, 2)
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 740.0, bottom: 15.0),
                  child: Container(
                      height: 50.0,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('Total: \$' + totalAmount.toString()),
                          SizedBox(width: 10.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              onPressed: () {},
                              elevation: 3,
                              color: Color(0xFFff6f00),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Pay Now',
                                ),
                              ),
                              textColor: Colors.white,
                            ),
                          )
                        ],
                      )))
            ])
          ])
        ])
      ]),
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

  Widget itemCard(itemName, color, price, imgPath, available, i) {
    return InkWell(
      onTap: () {
        if (available) {
          pickToggle(i);
        }
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 20, 20, 5),
        child: Material(
          borderRadius: BorderRadius.circular(40.0),
          elevation: 20.0,
          shadowColor: Color(0xFFff6f00),
          child: Container(
            padding: EdgeInsets.only(left: 15.0, right: 10.0),
            width: MediaQuery.of(context).size.width - 40.0,
            height: 140.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0)),
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                          color: available
                              ? Colors.grey.withOpacity(0.4)
                              : Colors.red.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(12.5),
                        ),
                        child: Center(
                            child: available
                                ? Container(
                              height: 12.0,
                              width: 12.0,
                              decoration: BoxDecoration(
                                  color: picked[i]
                                      ? Colors.yellow
                                      : Colors.grey
                                      .withOpacity(0.4),
                                  borderRadius:
                                  BorderRadius.circular(6.0)),
                            )
                                : Container()))
                  ],
                ),
                SizedBox(width: 10.0),
                Container(
                  height: 150.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgPath),
                          fit: BoxFit.contain)),
                ),
                SizedBox(width: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          itemName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                        SizedBox(width: 7.0),
                        available
                            ? picked[i]
                            ? Text(
                          'x1',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Colors.grey),
                        )
                            : Container()
                            : Container()
                      ],
                    ),
                    SizedBox(height: 7.0),
                    available
                        ? Text(
                      'Color: ' + color,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.grey),
                    )
                        : OutlineButton(
                      onPressed: () {},
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 1.0,
                          style: BorderStyle.solid),
                      child: Center(
                        child: Text('Find Similar',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                color: Colors.red)),
                      ),
                    ),
                    SizedBox(height: 7.0),
                    available
                        ? Text(
                      '\$' + price,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xFFFDD34A)),
                    )
                        : Container(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}