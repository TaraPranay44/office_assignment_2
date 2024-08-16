import 'package:flutter/material.dart';
import 'package:project/Widgets/global_widgets/my_text_field.dart';
import 'package:project/utils/colors.dart';
import 'package:project/utils/images.dart';
import 'package:project/Widgets/global_widgets/my_button.dart';

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key});

  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  void _privacyPolicy(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext context){
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Privacy Policy'),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.close))
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
               Text('• We value your privacy and are committed to protecting your personal information.'),
Text('• We collect personal information only when necessary and with your consent.'),
Text('• The data we collect may include your name, email address, and phone number.'),
Text('• We use your information to provide, maintain, and improve our services.'),
Text('• We do not sell or rent your personal information to third parties.'),
Text('• We may share your information with service providers who assist us in operating our services.'),
Text('• We implement reasonable security measures to protect your information from unauthorized access.'),
Text('• You have the right to access, correct, or delete your personal information.'),
Text('• We may update our privacy policy from time to time, and any changes will be posted on this page.'),
Text('• By using our services, you consent to our privacy policy and its terms.'),

                
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('OK'))
          ],
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 15),
        icon: Container(
              
              padding: EdgeInsets.all(2 ), // Add padding to create space between border and image
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: textColor1, width: 0.05), // Black circular border
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
        // padding: EdgeInsets.all(16),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 7,),
              Text('Create your account',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 23),),
              SizedBox(height: 17,),
              MyButton(
                backgroundColor: buttonColor2, 
                foregroundColor: textColor2, 
                
                text: Text('CONTINUE WITH FACEBOOK',style: TextStyle(color: textColor2,fontWeight: FontWeight.w400,fontSize: 13),), 
                width: 330, 
                height: 50, 
                leadingSymbol: Image.asset(facebookIcon,width: 20,height: 20,),
                onPressed: (){}
                ),
        
              SizedBox(height: 7,),
              MyButton(
                backgroundColor: white, 
                foregroundColor: textColor1, 
                text: Text('CONTINUE WITH GOOGLE',style: TextStyle(color: textColor1,fontWeight: FontWeight.w500,fontSize: 13),), 
                width: 330, 
                height: 50, 
                leadingSymbol: Image.asset(googleIcon,width: 20,height: 20,),
                onPressed: (){}
                ),
                SizedBox(height: 10,),
                
                  Text('OR LOG IN WITH EMAIL',style: TextStyle(color: textColor3,fontWeight: FontWeight.w400,fontSize: 13),),
                  
                  SizedBox(height: 10,),
                MyTextField(hintText: 'User Name'),
                  SizedBox(height: 10,),
                MyTextField(hintText: 'Email address'),
                  SizedBox(height: 10,),
                MyTextField(hintText: 'Password'),
                ListTile(
                  title: Row(
                  
                  children: [
                    
                    Text('I have read the',style: TextStyle(color: textColor1,fontWeight: FontWeight.w400,fontSize: 13),),
                    TextButton(onPressed: (){
                      _privacyPolicy(context);
                    }, child: Text('Privacy Policy',style: TextStyle(color: buttonColor1,fontWeight: FontWeight.w400,fontSize: 13),))
                  ],
                ),
                trailing: Checkbox(value: false, onChanged: null),
                ),
                MyButton(
                  backgroundColor: buttonColor1, 
                  foregroundColor: textColor2, 
                  text: Text('GET STARTED',style: TextStyle(color: textColor2,fontWeight: FontWeight.w400,fontSize: 13),), 
                  width: 330, 
                  height: 50, 
                  onPressed: (){}
                  )
        
            ],
          ),
        ),
      ),

    );
  }
}