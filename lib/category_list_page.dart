import 'package:becho_v2/app_properties.dart';
import 'package:becho_v2/category.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/staggered_category_card.dart';

class CategoryListPage extends StatefulWidget {
  @override
  _CategoryListPageState createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  List<Category> categories = [
    Category(
      Color(0xffFCE183),
      Color(0xffF68D7F),
      'Gadgets',
      'Assets/gadgets.png',
    ),
    Category(
      Color(0xffF749A2),
      Color(0xffFF7375),
      'Clothes',
      'Assets/clothes.png',
    ),
    Category(
      Color(0xff00E9DA),
      Color(0xff5189EA),
      'Fashion',
      'Assets/fashion.png',
    ),
    Category(
      Color(0xffAF2D68),
      Color(0xff632376),
      'Home',
      'Assets/sofa.png',
    ),
    Category(
      Color(0xff36E892),
      Color(0xff33B2B9),
      'Beauty',
      'Assets/beauty.png',
    ),
    Category(
      Color(0xffF123C4),
      Color(0xff668CEA),
      'Appliances',
      'Assets/appliances.png',
    ),
  ];

  List<Category> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = categories;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Material(
        color: Color(0xffF9F9F9),
        child: Container(
          margin: const EdgeInsets.only(top: kToolbarHeight),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Category List',
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white,
                ),
                child: TextField(
                  controller:searchController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      prefixIcon: SvgPicture.asset('Assets/search_icon.svg', fit: BoxFit.scaleDown,)
                  ),
                  onChanged: (value) {
                    if(value.isNotEmpty) {
                      List<Category> tempList = List<Category>();
                      categories.forEach((category) {
                        if(category.category.toLowerCase().contains(value)) {
                          tempList.add(category);
                        }
                      });
                      setState(() {
                        searchResults.clear();
                        searchResults.addAll(tempList);
                      });
                      return;
                    } else {
                      setState(() {
                        searchResults.clear();
                        searchResults.addAll(categories);
                      });
                    }
                  },
                ),
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: searchResults.length,
                  itemBuilder: (_, index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0,),
                    child: StaggeredCardCard(
                      begin: searchResults[index].begin,
                      end: searchResults[index].end,
                      categoryName: searchResults[index].category,
                      assetPath: searchResults[index].image,
                    ),
                  ),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}