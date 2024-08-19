import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/icons.dart';
import 'package:project/src/utils/images.dart';
import 'package:shadow/shadow.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isDescriptionExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                // color: productImageBg,
              height: 260,
              decoration: BoxDecoration(
                  color: productImageBg,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
              ),
              child: Center(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Shadow(
                       child:Image.asset(apples,fit: BoxFit.contain,height: 140,),
                       options: ShadowOptions(
                        overlayColor: productImageBg,
                        blur: 10,
                        offset: Offset(7, 7)
                       ),
                    ),
      
                    SizedBox(height:15,),
                    Image.asset(slide_icon),
                    SizedBox(height:25,),
                    ]),
              ),
            ),
          
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: productImageBg, 
              elevation: 0,
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Image.asset(back_arrow,height: 17,)),
              actions: [
                IconButton(onPressed: (){}, icon: Image.asset(send_icon,height: 17,)),
              ],
              ))
        ],
      ),
      
      Padding(
        padding: EdgeInsets.fromLTRB(18,14,16,10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ 
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Natural Red Apple',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: pText1,fontFamily: 'Gilroy'),),
                  Text('1kg, Price',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w100,color: pText2,fontFamily: 'Gilroy'),),
                ],
              ),
              Image.asset(bookmark,height: 20,width: 20,),
              ]
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 127, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                          icon: Icon(Icons.remove,size: 18,),
                          onPressed: () {},
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: pText2,width: 0.2),
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.add,size: 18),
                          onPressed: () {},
                        ),
                  ],
                ),),
              
                Text(
                      '\$4.99',
                      style: TextStyle(
                        color: pText1,
                        fontFamily: 'Gilroy',
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                      ),
                    )
              ],
            ),
              
            SizedBox(height: 10,),
            Divider(thickness: 0.3,),
              
            GestureDetector(
                  onTap: () {
                    setState(() {
                      isDescriptionExpanded = !isDescriptionExpanded;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Detail',
                        style: TextStyle(
                          fontSize: 13,
                          color: pText1,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Gilroy',
                        ),
                      ),
                      Icon(
                        isDescriptionExpanded
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                if (isDescriptionExpanded)
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      'Apples Are Nutritious. Apples May Be Good For Weight Loss, '
                      'Apples May Be Good For Your Heart. As Part Of A Healthful And Varied Diet.',
                      style: TextStyle(fontSize: 11, color: pText2,fontWeight: FontWeight.w400),
                    ),
                  ),
          ],
        ),
        ),
           ],
      ),
      bottomSheet: Container(
        color: white,
        padding: EdgeInsets.all(18.0),
        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: pButton1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            minimumSize: Size(330, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Add To Basket',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: pButtonText1
                            ),
                          ),
                        ),
      ),
          
            );
  }
}