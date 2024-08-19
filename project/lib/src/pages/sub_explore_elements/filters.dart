import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/check_box.dart';
import 'package:project/src/utils/colors.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool isEggsChecked = true;
  bool isNoodlesChecked = false;
  bool isChipsChecked = false;
  bool isFastFoodChecked = false;
  bool isIndividualChecked = false;
  bool isCocolaChecked = true;
  bool isIfadChecked = false;
  bool isKaziFarmasChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
        title: Text('Filters',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: fText1),),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: fbgFill,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  
                      Text(
                        'Categories',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: fText1),
                      ),
                      SizedBox(height: 10,),
                      buildCheckboxRow('Eggs', isEggsChecked, (value) {
                        setState(() {
                          isEggsChecked = value!;
                        });
                      }),
                      buildCheckboxRow('Noodles & Pasta', isNoodlesChecked, (value) {
                        setState(() {
                          isNoodlesChecked = value!;
                        });
                      }),
                      buildCheckboxRow('Chips & Crisps', isChipsChecked, (value) {
                        setState(() {
                          isChipsChecked = value!;
                        });
                      }),
                      buildCheckboxRow('Fast Food', isFastFoodChecked, (value) {
                        setState(() {
                          isFastFoodChecked = value!;
                        });
                      }),
                      SizedBox(height: 20),
                    
                      Text(
                        'Brand',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: fText1),
                      ),
                      SizedBox(height: 10,),
                      buildCheckboxRow('Individual Collection', isIndividualChecked, (value) {
                        setState(() {
                          isIndividualChecked = value!;
                        });
                      }),
                      buildCheckboxRow('Cocola', isCocolaChecked, (value) {
                        setState(() {
                          isCocolaChecked = value!;
                        });
                      }),
                      buildCheckboxRow('Ifad', isIfadChecked, (value) {
                        setState(() {
                          isIfadChecked = value!;
                        });
                      }),
                      buildCheckboxRow('Kazi Farmas', isKaziFarmasChecked, (value) {
                        setState(() {
                          isKaziFarmasChecked = value!;
                        });
                      }),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20,16,20,16),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Apply filter logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade300,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text('Apply Filter', style: TextStyle(fontSize: 14,color: fText2),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
