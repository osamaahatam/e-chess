import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
<<<<<<< HEAD
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Utils/constrant.dart';
import '../Firebase/authentication.dart';
import 'Profile/Profile_edite_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
=======
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Utils/constrant.dart';
import 'authentication.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});
>>>>>>> 1fbd00c6969ebe645e842e95bd7abe9d37033027

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
<<<<<<< HEAD
  final cu = FirebaseAuth.instance.currentUser;
  var currentIndex = 0;
  var titleOfScreen = "Home Screen";

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titleOfScreen,
          style: TextStyle(color: Colors.black),
        ),
=======
   //final  cu = FirebaseAuth.instance.currentUser!;
  var currentIndex=0;

  var titleOfScreen="Home Screen";

  @override
  Widget build(BuildContext context) {
  
   
    
    return Scaffold(
      appBar: AppBar(
        title: Text(titleOfScreen,style: TextStyle(color: Colors.black),),
>>>>>>> 1fbd00c6969ebe645e842e95bd7abe9d37033027
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
<<<<<<< HEAD
            onPressed: () {},
            icon: Icon(
              MdiIcons.menu,
              color: Colors.black,
            )),
        actions: [
          IconButton(
            onPressed: null,
            icon: ClipOval(
                child: Image.asset("assets/images/chessbackground.png")),
          )
        ],
      ),
      body: currentIndex == 0
          ? HomePageWidget()
          : currentIndex == 3
              ? Container(
                  //TODO:Creating Profile Screen
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Space(space: 10),
                        //TODO:create a profile circle
                        Stack(
                          children: [
                            Container(
                              height: 135,
                              width: 135,
                              alignment: Alignment.topCenter,
                              child: const CircleAvatar(
                                radius: 90,
                                backgroundImage: AssetImage(
                                  'assets/images/pro.jpg',
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: GestureDetector(
                                //Navigate to the edite profile screen 
                                onTap: () => Get..to(()=> ProfileEdite()),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: PrimaryColor,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Icon(
                                    LineAwesomeIcons.alternate_pencil,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Space(space: 20),
                        Text(
                          userName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Space(space: 5),
                        Text(
                          userEmail,
                          style: TextStyle(fontSize: 16),
                        ),
                        Space(space: 30),
                        const Divider(),
                        Space(space: 10),
                        //MENU
                        //TODO: creating MENU
                        ProfileMenuWidgets(
                          title: "Edite Profile",
                          icon: LineAwesomeIcons.user_edit,
                          Onpress: () => Get..to(()=> ProfileEdite()),
                        ),
                        Space(space: 10),
                        ProfileMenuWidgets(
                          title: "Change Theme",
                          icon: LineAwesomeIcons.moon,
                          Onpress: () {},
                        ),
                        Space(space: 10),
                        ProfileMenuWidgets(
                          title: "About us",
                          icon: LineAwesomeIcons.info,
                          Onpress: () {},
                        ),
                        Space(space: 10),
                        const Divider(
                          color: Colors.grey,
                        ),
                        Space(space: 10),
                        ProfileMenuWidgets(
                            title: "Logout",
                            icon: LineAwesomeIcons.alternate_sign_out,
                            Onpress: () {},
                            endIcon: false,
                            textColor: Colors.red,
                            IconColor: Colors.red),
                      ],
                    ),
                  ),
                )
              : Container(
                  child: Text("Hello"),
                ),

      //Custom Navigation Bar for scrolling pages
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
      height: gWidth * .155, 
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                blurRadius: 30,
                offset: Offset(0, 10),
              )
            ],
            borderRadius: BorderRadius.circular(20)),
        child: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.symmetric(horizontal: gWidth * .024),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            //index = [0,1,2,3]
            onTap: () {
              //Changing the variable
              setState(() {
                currentIndex = index;
                titleOfScreen = ListOfTitleScreen[index];
                HapticFeedback.lightImpact();
              });
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Stack(
              children: [
                //for adding(green for now) color to the Selected item
                //start
                SizedBox(
                  width: gWidth * .2125,
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? gWidth * 0.12 : 0,
                      width: index == currentIndex ? gWidth * 0.2125 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? PrimaryColor.withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                //end
                Container(
                  width: gWidth * .2125,
                  alignment: Alignment.center,
                  child: Icon(
                    ListOfIcon[index],
                    size: gWidth * .076,
                    color:
                        index == currentIndex ? PrimaryColor : Colors.black26,
                  ),
                )
              ],
            ),
          ),
        ),
=======
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
      body:currentIndex == 0 ?  HomePageWidget() :
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
            //index = [0,1,2,3]
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
                //for adding(green for now) color to the Selected item
                //start
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
                //end
                
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
>>>>>>> 1fbd00c6969ebe645e842e95bd7abe9d37033027
      ),
    );
  }
}

<<<<<<< HEAD
class ProfileMenuWidgets extends StatelessWidget {
  const ProfileMenuWidgets({
    super.key,
    required this.title,
    required this.icon,
    required this.Onpress,
    this.endIcon = true,
    this.textColor,
    this.IconColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback Onpress;
  final bool endIcon;
  final Color? textColor;
  final Color? IconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: Onpress,
      shape: const StadiumBorder(),
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(.05),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          icon,
          color: IconColor != null ? IconColor : PrimaryColor,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      trailing: endIcon
          ? Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(.05),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                LineAwesomeIcons.angle_right,
                color: Colors.grey,
                size: 18,
              ),
            )
          : null,
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: gWidth * .8,
        height: gHeight / 15,
        child: ElevatedButton(
          onPressed: () {},
          //Giving the button styles
          style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Colors.white.withOpacity(0.3)),
            backgroundColor: MaterialStateProperty.all(Colors.red),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
          ),
          child: Row(
            children: [
              //image for the sign out
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 35,
                height: 35,
                child: Image.asset("assets/icons/apple.png"),
              ),
              const SizedBox(
                width: 40,
              ),
              //text button
              const Text(
                "Logout",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ));
  }
}

class Space extends StatelessWidget {
  Space({super.key, required this.space});
  double space;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: space,
    );
  }
}

// class ProfilePage extends StatelessWidget {
//    ProfilePage({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 20,),
//                   Container(
//               // color: Colors.red,
//               height: 200,
//               alignment:Alignment.topCenter,
//               child:  CircleAvatar(
//                 backgroundColor: Colors.greenAccent.withOpacity(.3),
//                 radius: 95,
//                 child: CircleAvatar(
//                   radius: 86,
//                   backgroundImage: NetworkImage(
//                     'https://imgs.search.brave.com/vALMth8xJTHQFXEfBv_OOlSQ9vQRBoTyeZDr--QeFzY/rs:fit:1000:600:1/g:ce/aHR0cHM6Ly8ycGFj/bGVnYWN5Lm5ldC93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyMC8w/MS9XaGF0LVdhcy1U/dXBhYy1TaGFrdXIt/TmV0LVdvcnRoLUF0/LVRoZS1UaW1lLU9m/LUhpcy1EZWF0aC5q/cGc',
//                     ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10,),
//             Text(
//              userName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
//             ),
//             SizedBox(height: 5,),
//             Text(
//               userEmail,style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 30,),
//             CustomDropdownButton2(
//               hint: 'Select Item',
//               dropdownItems: items,
//               value: selectedValue,
//               onChanged: (value) {
//                 // setState(() {
//                 //   selectedValue = value;
//                 // });
//               },
//       ),

//           ],
//         ),
//       ),
//     );
//   }
// }

=======
>>>>>>> 1fbd00c6969ebe645e842e95bd7abe9d37033027
class HomePageWidget extends StatelessWidget {
  const HomePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
<<<<<<< HEAD
        children: [
          SizedBox(
            height: 20,
          ),
          //TODO:Carousel Slider Scetion
          //Start
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
                    image: NetworkImage(
                        "https://images.pexels.com/photos/814133/pexels-photo-814133.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/112854/pexels-photo-112854.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.pexels.com/photos/51930/chess-game-chessboard-glass-51930.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
=======
    children: [
      SizedBox(height: 20,),
      //TODO:Carousel Slider Scetion 
      //Start
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
>>>>>>> 1fbd00c6969ebe645e842e95bd7abe9d37033027
    );
    //end
  }
}

<<<<<<< HEAD
List<IconData> ListOfIcon = [
=======


List<IconData> ListOfIcon =[
>>>>>>> 1fbd00c6969ebe645e842e95bd7abe9d37033027
  Icons.home_rounded,
  Icons.settings_rounded,
  Icons.book_rounded,
  Icons.person_rounded,
];

<<<<<<< HEAD
=======
List<String> ListOfTitleScreen=[
  "Home Screen",
  "Course Screen",
  "Profile Screen",
  "Setting Screen",
];


>>>>>>> 1fbd00c6969ebe645e842e95bd7abe9d37033027
class Place {
  Place(
      [this.title = '',
      this.description = '',
      this.image = '',
      this.value = 0.0]);
  String title;
  String description;
  String image;
  double value;
}
