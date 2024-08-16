import 'package:flutter/material.dart';
import 'package:project/Widgets/global_widgets/my_button.dart';
import 'package:project/Widgets/global_widgets/my_text_field.dart';

import 'package:project/auth/sign_up_page.dart';
import 'package:project/utils/colors.dart';
import 'package:project/utils/images.dart';

class MySignInPage extends StatelessWidget {
  const MySignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(left: 15),
        icon: Container(
              
              padding: const EdgeInsets.all(2 ), // Add padding to create space between border and image
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: textColor1, width: 0.1), // Black circular border
              ),
              child: CircleAvatar(
                
                backgroundColor: white, // Optional: Background color of the circular avatar
                child: Image.asset(backArror, width: 15, height: 15), // Adjust size if needed
              ),
              width: 35,
              
            
        ),
        
        onPressed: (){
          Navigator.pop(context);
        },
      )
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 7,),
             Text('Welcome Back!',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700,color: textColor1),),
            const SizedBox(height: 17,),
            MyButton(
              backgroundColor: buttonColor2, 
              foregroundColor: white, 
              
              text:  Text('CONTINUE WITH FACEBOOK',style: TextStyle(color: white,fontSize: 13,fontWeight: FontWeight.w400),), 
              width: 330, 
              height: 50, 
              leadingSymbol: Image.asset(facebookIcon,width: 20,height: 20,),
              onPressed: (){}
              ),

            const SizedBox(height: 7,),
            MyButton(
              backgroundColor: white, 
              foregroundColor: textColor1, 
              text:  Text('CONTINUE WITH GOOGLE',style: TextStyle(color: textColor1,fontSize: 13,fontWeight: FontWeight.w400),), 
              width: 330, 
              height: 50, 
              leadingSymbol: Image.asset(googleIcon,width: 20,height: 20,),
              onPressed: (){}
              ),
              const SizedBox(height: 10,),
              TextButton(
                onPressed: (){}, 
                child:  Text('OR LOG IN WITH EMAIL',style: TextStyle(color: textColor3,fontSize: 13,fontWeight: FontWeight.w400),),
                ),
                const SizedBox(height: 10,),
              const MyTextField(hintText: 'Email address'),
                const SizedBox(height: 10,),
              const MyTextField(hintText: 'Password'),
                const SizedBox(height: 20,),
              
              MyButton(
                backgroundColor: buttonColor1, 
                foregroundColor: white, 
                text:  Text('LOG IN',style: TextStyle(color: white,fontSize: 13,fontWeight: FontWeight.w400),), 
                width: 330, 
                height: 50, 
                onPressed: (){}
                ),
              
              TextButton(onPressed: (){}, child:  Text('Forgot Password?',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: textColor1),)),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text('DON\'T HAVE AN ACCOUNT?',style: TextStyle(color: textColor3,fontSize: 14,fontWeight: FontWeight.w400),),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MySignUpPage()));
                    }, 
                    child:  Text('SIGN UP',style: TextStyle(color: buttonColor1),))
                ],
              )

          ],
        ),
      ),

    );
  }
}