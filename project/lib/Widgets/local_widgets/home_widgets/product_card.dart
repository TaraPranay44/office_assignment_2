import 'package:flutter/material.dart';
import 'package:project/services/data_models/vegetables_home_page_data.dart';
import 'package:project/utils/colors.dart';
class ProductCard extends StatelessWidget {
  final ProductItem product;
  final Function() onButtonTap;
  final Function() onCardTap;
  const ProductCard({super.key, required this.product, required this.onButtonTap, required this.onCardTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: GestureDetector(
        onTap: onCardTap,
        child: Card(
          elevation: 0,
          color: white,
          

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: BorderSide(color: groceryItem,width: 0.1)),
          child: Padding(
            
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  product.image,height: 90,width: 90,fit: BoxFit.contain,
                ),
                
                  
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                   Text(product.name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: item,fontFamily: 'Gilroy',),),
                   Text(product.unit,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: itemInfo),)
                    ],
                                     ),
                  
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$${product.price}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: item),),
                    // SizedBox(width: 20,),
                
                    
                    SizedBox.fromSize(
                      // width: 40,
                      size: Size(40, 40),
                      child: ElevatedButton(onPressed: 
                      onButtonTap, child: Icon(Icons.add,color: white,size: 25,),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        backgroundColor: buttonColor1,
                        padding: EdgeInsets.zero,
                        minimumSize: Size(40, 40)
                      )),
                    )
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