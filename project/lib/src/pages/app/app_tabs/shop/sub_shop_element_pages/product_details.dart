
import 'package:flutter/material.dart';
import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/icons.dart';
// import 'package:project/src/utils/images.dart';
import 'package:shadow/shadow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ProductDetails extends StatefulWidget {
  final ProductDetailsData product;

  const ProductDetails({super.key, required this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isDescriptionExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 360.h,
                decoration: BoxDecoration(
                  color: productImageBg,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Shadow(
                        options: ShadowOptions(
                          overlayColor: productImageBg,
                          blur: 10,
                          offset: const Offset(7, 7),
                        ),
                        child: Image.asset(
                          widget.product.imagePath,
                          fit: BoxFit.contain,
                          height: 220.h,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Image.asset(slideIcon),
                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 14, 16, 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product.title,
                              style: TextStyle(
                                fontSize: 30.h,
                                fontWeight: FontWeight.w300,
                                color: pText1,
                                fontFamily: 'Gilroy',
                              ),
                            ),
                            Text(
                              widget.product.subtitle,
                              style: TextStyle(
                                fontSize: 18.h,
                                fontWeight: FontWeight.w100,
                                color: pText2,
                                fontFamily: 'Gilroy',
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          bookmark,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ],
                    ),
                     SizedBox(height: 14.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 190.h,
                          
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                icon:  Icon(
                                  Icons.remove,
                                  size: 22.h,
                                ),
                                onPressed: () {},
                              ),
                              Container(
                                width: 34.w,
                                height: 34.h,
                                decoration: BoxDecoration(
                                  border: Border.all(color: pText2, width: 0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
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
                                icon:  Icon(
                                  Icons.add,
                                  size: 22.h,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Text(
                          widget.product.price,
                          style: TextStyle(
                            color: pText1,
                            fontFamily: 'Gilroy',
                            fontSize: 22.h,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                     SizedBox(height: 14.h),
                    const Divider(thickness: 0.3),
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
                              fontSize: 18.h,
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
                          widget.product.description,
                          style: TextStyle(
                            fontSize: 15.h,
                            color: pText2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(backArrow, height: 17),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(sendIcon, height: 17),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: white,
        padding: const EdgeInsets.all(18.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: pButton1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            minimumSize: const Size(330, 50),
          ),
          onPressed: () {},
          child: Text(
            'Add To Basket',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: pButtonText1,
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:project/src/Widgets/local_widgets/shop_screen/product_details/add_to_basket.dart';
// import 'package:project/src/Widgets/local_widgets/shop_screen/product_details/details_app_bar.dart';
// import 'package:project/src/Widgets/local_widgets/shop_screen/product_details/image_section.dart';
// import 'package:project/src/Widgets/local_widgets/shop_screen/product_details/info_section/info_section.dart';
// import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart';
// import 'package:project/src/utils/colors.dart';
// // import 'package:project/src/utils/icons.dart';
// // import 'package:shadow/shadow.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ProductDetails extends StatefulWidget {
//   final ProductDetailsData product;

//   const ProductDetails({super.key, required this.product});

//   @override
//   State<ProductDetails> createState() => _ProductDetailsState();
// }

// class _ProductDetailsState extends State<ProductDetails> {
//   bool isDescriptionExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: white,
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               ProductImageSection(product: widget.product),
//               ProductInfoSection(
//                 product: widget.product,
//                 isDescriptionExpanded: isDescriptionExpanded,
//                 onDescriptionToggle: () {
//                   setState(() {
//                     isDescriptionExpanded = !isDescriptionExpanded;
//                   });
//                 },
//               ),
//             ],
//           ),
//           ProductDetailsAppBar(),
//         ],
//       ),
//       bottomSheet: AddToBasketButton(),
//     );
//   }
// }



