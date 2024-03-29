import 'package:carousel_slider/carousel_slider.dart';
import 'package:echessapp/Utils/constrant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex=0;
  var titleOfScreen="Home Screen";
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleOfScreen,style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            
          },
          icon: Icon(MdiIcons.menu,color: Colors.black,)
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: ClipOval(child: Image.asset("assets/icons/pro.jpeg")),
          )
        ],
      ),
      body:currentIndex == 0 ?  Container(
        child: Column(
      children: [
        SizedBox(height: 20,),
        Container(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://images.pexels.com/photos/814133/pexels-photo-814133.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://images.pexels.com/photos/112854/pexels-photo-112854.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://images.pexels.com/photos/51930/chess-game-chessboard-glass-51930.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],    
            )
        ),
      ],
    )
  ,
      ) :
      Container(child: Center(child: Text("Osama Hatam"),),),
      //Custom Navigation Bar for scrolling pages 
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: gWidth*.155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0,10),
            )
          ],
          borderRadius: BorderRadius.circular(20)
        ),
        child: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.symmetric(horizontal: gWidth*.024),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              //Changing the variable
              setState(() {
                currentIndex = index;
                titleOfScreen=ListOfTitleScreen[index];
                HapticFeedback.lightImpact();
              });
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Stack(
              children: [
                SizedBox(
                  width: gWidth*.2125,
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? gWidth*0.12 : 0,
                      width: index == currentIndex ? gWidth*0.2125 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex ? Colors.greenAccent.withOpacity(.2) : Colors.transparent, 
                        borderRadius: BorderRadius.circular(20),
                      ),
                      ),
                  ),
                ),
                Container(
                  width: gWidth*.2125,
                  alignment: Alignment.center,
                  child: Icon(
                    ListOfIcon[index],
                    size: gWidth*.076,
                    color: index == currentIndex ? Colors.greenAccent : Colors.black26,
                  ),
                )
              ],
            ),
          ),
          ),
      ),
    );
  }
}



List<IconData> ListOfIcon =[
  Icons.home_rounded,
  Icons.settings_rounded,
  Icons.book_rounded,
  Icons.person_rounded,
];

List<String> ListOfTitleScreen=[
  "Home Screen",
  "Course Screen",
  "Profile Screen",
  "Setting Screen",
];