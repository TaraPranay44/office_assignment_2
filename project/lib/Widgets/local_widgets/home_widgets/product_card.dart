import 'package:flutter/material.dart';
import 'package:project/services/data_models/vegetables_home_page_data.dart';
import 'package:project/utils/colors.dart';
class ProductCard extends StatefulWidget {
  final ProductItem product;
  final Function() onButtonTap;
  
  ProductCard({super.key, required this.product, required this.onButtonTap, });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/product_details_page');
        },
        child: Card(
          elevation: 0,
          color: white,
          

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: BorderSide(color: groceryItem,width: 0.1)),
          child: Padding(
            
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.product.image,height: 90,width: 90,fit: BoxFit.contain,
                ),
                
                  
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                   Text(widget.product.name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: item,fontFamily: 'Gilroy',),),
                   Text(widget.product.unit,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: itemInfo),)
                    ],
                                     ),
                  
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$${widget.product.price}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: item),),
                    // SizedBox(width: 20,),
                
                    
                    SizedBox.fromSize(
                      // width: 40,
                      size: Size(40, 40),
                      child: ElevatedButton(onPressed: 
                      widget.onButtonTap, child: Icon(Icons.add,color: white,size: 25,),
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