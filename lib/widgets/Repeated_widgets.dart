import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../Utils/constrant.dart';
import '../screen/HomePage.dart';

Widget ProfileEditScreen() {
  String? selectedCityValue;
  String? selectedSexValue;
  return Container(
        //TODO:Creating Profile Screen
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Space(space: 10),
            //TODO:create a profile circle
              Container(
                height: 135,
                width: 135,
                alignment:Alignment.topCenter,
                child:  const CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage(
                    'assets/images/pro.jpg',
                    ),
                ),
            ),
            Space(space: 5),
            Text(
             userName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            Space(space: 5),
            Text(
              userEmail,style: TextStyle(fontSize: 16),
            ),
            Space(space: 30),
            //Caption to the dropdown list 
            //start
            Align(
              child: Text(
                "City",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  //color: Colors.greenAccent.withop,
                  ),),
              alignment: Alignment.topLeft,
            ),
            //end
            Space(space: 10,),
            //TODO:dropdwon list for the city 
            //start
            CustomDropdownButton2(
              hint: 'Select Your City',
              buttonWidth: gWidth,
              dropdownWidth: gWidth*.95,
              dropdownItems: City,
              value: selectedCityValue,
              onChanged: (value) {
                // setState(() {
                //   selectedCityValue = value;
                // });
              },
             ),
            //end 
            Space(space: 15),
            //Caption to the dropdown Sex 
            //start
            Align(
              child: Text(
                "Gendar",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  //color: Colors.greenAccent.withop,
                  ),),
              alignment: Alignment.topLeft,
            ),
            //end
            Space(space: 10,),
            //TODO:dropdwon list for the Sex 
            //start
            CustomDropdownButton2(
              hint: 'Gender ',
              buttonWidth: gWidth,
              dropdownWidth: gWidth*.95,
              dropdownItems: Sex,
              value: selectedSexValue,
              onChanged: (value) {
                // setState(() {
                //   selectedSexValue = value;
                // });
              },
             ),
          ]
        )
      )
      //end 
      );
}
