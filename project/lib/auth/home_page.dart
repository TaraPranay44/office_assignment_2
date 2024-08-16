
import 'package:flutter/material.dart';
import 'package:project/Widgets/global_widgets/my_button.dart';

import 'package:project/auth/sign_in_page.dart';
import 'package:project/auth/sign_up_page.dart';
import 'package:project/services/data_models/home_page_data.dart';
import 'package:project/utils/colors.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomePage homePage =  HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: homePage.titleImage,
        centerTitle: true,
        backgroundColor: white,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40,),
          homePage.centerImage,
          const SizedBox(height: 55,),
          homePage.heading,
          const SizedBox(height: 10,),
          homePage.subHeading1,
          homePage.subHeading2,
          const SizedBox(height: 35,),
          MyButton(
            backgroundColor: buttonColor1,
            foregroundColor: white,
            text: Text('SIGN UP',style: TextStyle(color: white,fontSize: 13,fontWeight: FontWeight.w400),),
          
            width: 330,
            height: 50,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MySignUpPage()));
            }
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text('   AlREADY HAVE AN ACCOUNT?',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: textColor3),),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MySignInPage()));
                },
                child:  Text('LOG IN',style: TextStyle(color: buttonColor1),),)
            ],
          )
        ],
      ),
    );
  }
}