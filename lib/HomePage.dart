import 'package:becho_v2/products.dart';
import 'package:becho_v2/Categoryitem.dart';
import 'package:becho_v2/drawerScreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'ProductPage.dart';

//Class HomePage

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List bannerAdSlider = [
    "Assets/banner1.jpg",
    "Assets/banner2.jpg",
    "Assets/banner3.jpg",
    "Assets/banner4.jpg",
    "Assets/banner5.jpg",
    "Assets/banner6.jpg",
    "Assets/banner7.jpg",
    "Assets/banner8.jpg",
  ];

  //Products Import

  List<Product> products = [
    Product(
        image: "Assets/product1.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "iPad mini"),
    Product(
        image: "Assets/product2.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "iPad Pro"),
    Product(
        image: "Assets/product3.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "iPhone Pro Max"),
    Product(
        image: "Assets/product4.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "Apple Watch Series 3"),
    Product(
        image: "Assets/product5.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "Apple Watch Series 4"),
    Product(
        image: "Assets/product6.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "Macbook Pro 16 inch"),
    Product(
        image: "Assets/product7.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "Macbook Pro"),
    Product(
        image: "Assets/product8.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "iMac 4k Retina"),
    Product(
        image: "Assets/product9.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "T-Shirts"),
    Product(
        image: "Assets/product10.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "Ethnic Wear - Dress"),
    Product(
        image: "Assets/product11.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "Dress"),
    Product(
        image: "Assets/product12.jpg",
        description:
        "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "100",
        productName: "T-Shirt"),
  ];

  //Drawer Animation Variables

  double xOffset = 0;
  double yOffset = 0;
  double zOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: Colors.white,
            systemNavigationBarIconBrightness: Brightness.light
        )
    );
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('Becho', style: TextStyle(color: Colors.black87)),
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        actionsIconTheme: IconThemeData(
            color: Colors.black
        ),

        iconTheme: IconThemeData(
            color: Colors.black87
        ),

        //drawer button

        leading: isDrawerOpen ?
        IconButton(
          icon: Icon(EvaIcons.arrowBack),
          onPressed: () {
            setState(() {
              xOffset=0;
              yOffset=0;
              zOffset=0;
              scaleFactor=1;
              isDrawerOpen=false;
            });
          },
        ) :

        IconButton(
          onPressed: () {
            setState(() {
              xOffset = 210;
              yOffset = 40;
              scaleFactor = 0.9;
              isDrawerOpen=true;
            });
          },
          icon: Icon(EvaIcons.menu2Outline),
          iconSize: 30,
        ),

        actions: [

          //Search Button

          IconButton(
            onPressed: (){
              Navigator.of(context).pushNamed('/searchicon');
            },
            icon: Icon(EvaIcons.searchOutline),
            iconSize: 30,
            color: Colors.black87,
          ),

          //Cart Button

          IconButton(
            onPressed: (){
              Navigator.of(context).pushNamed('/cartpage');
            },
            icon: Icon(EvaIcons.shoppingBagOutline),
            iconSize: 30,
            color: Colors.black87,
          )
        ],
      ),

      //DrawerScreen and Container(Animated) Stack

      body: Stack(
        children: [
          DrawerScreen(),
          AnimatedContainer(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            duration: Duration(milliseconds: 250),
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor)..rotateY(isDrawerOpen? -0.5:0),

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(isDrawerOpen?40:0.0),
                boxShadow: [
                  BoxShadow(

                    //Body Container Shadow

                    color: Color(0xFFff6f00),
                    spreadRadius: 10,
                    blurRadius: 70,
                  )
                ]
            ),

            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),

                  //Categories List Icons

                  SizedBox(
                    height: 67,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [

                        CategoryItem(
                          icon: EvaIcons.giftOutline,
                          size: 70,
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFff6f00),),

                        CategoryItem(
                          icon: EvaIcons.headphones,
                          size: 70,
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFffc107),),

                        CategoryItem(
                          icon: EvaIcons.bookOpenOutline,
                          size: 70,
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFff6f00),),

                        CategoryItem(
                          icon: EvaIcons.filmOutline,
                          size: 70,
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFffc107),),

                        CategoryItem(
                          icon: EvaIcons.monitorOutline,
                          size: 70,
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFff6f00),),

                        CategoryItem(
                          icon: EvaIcons.printerOutline,
                          size: 70,
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFffc107),),

                        CategoryItem(
                          icon: EvaIcons.briefcaseOutline,
                          size: 70,
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFff6f00),),

                        SizedBox(width: 10),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),

                  //ad banner 1 (Static)

                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    child: AspectRatio(
                      aspectRatio: 16/5,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("Assets/banner8.jpg"),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ),
                  ),

                  //ad banner1 (Static)/end

                  SizedBox(height: 10,),

                  //bannerAdSlider2 (Carousel)

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                        height: 200.0,
                        width: double.infinity,
                        child: Carousel(
                          images: [
                            AssetImage("Assets/banner1.jpg"),
                            AssetImage("Assets/banner2.jpg"),
                            AssetImage("Assets/banner3.jpg"),
                            AssetImage("Assets/banner4.jpg"),
                            AssetImage("Assets/banner5.jpg"),
                            AssetImage("Assets/banner6.jpg"),
                          ],
                          dotSize: 7.0,
                          dotSpacing: 20.0,
                          dotColor: Color(0xFFffc107),
                          //dotBgColor: Color(0xFFffc107).withOpacity(0.5),
                          indicatorBgPadding: 5.0,
                          borderRadius: true,
                          radius: Radius.circular(20.0),
                          dotIncreaseSize: 1.5,
                        )
                    ),
                  ),

                  //bannerAdSlider2 (Carousel)/end

                  SizedBox(height: 10),

                  //ad banner3 (Static)

                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    child: AspectRatio(
                      aspectRatio: 16/5,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("Assets/banner7.jpg"),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ),
                  ),

                  //ad banner3 (Static)/end

                  SizedBox(height: 20),

                  //ProductGrid

                  GridView.count(
                    physics: ClampingScrollPhysics(),
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 1 / 1.25,
                    children: products.map((product) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Hero(
                                  tag: product.image,
                                  child: AspectRatio(
                                    aspectRatio: 1 / 1,
                                    child: Image(
                                      image: AssetImage(product.image),
                                    ),
                                  ),
                                ),
                                Text(
                                  product.productName,
                                ),
                                Text(
                                  "\₹${product.price}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFff6f00),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductPage(
                                        product: product,
                                      ),
                                    ));
                              },
                            ),
                          )
                        ],
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      //Navigation Bar

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
            Navigator.of(context).pushNamed('/category_page');
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