
// Filter screen as a bottom sheet

import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/check_box.dart';
import 'package:project/src/utils/colors.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  // Checkbox states
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
    return Container(
      height: 900,
      color: white,
      child: Column(
        children: [
          _buildHeader(context),
          Expanded(
            child: _buildFilterContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close, size: 25),
          ),
        ),
        title:  Padding(
          padding: const EdgeInsets.only(top: 40,right: 40),
          child: Center(
            child: Text(
              'Filters',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: fText1, // Update with your color variable (fText1)
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFilterContent() {
    return Container(
      decoration: BoxDecoration(
        color: fbgFill, // Update with your color variable
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCategorySection(),
                  const SizedBox(height: 20),
                  _buildBrandSection(),
                ],
              ),
            ),
          ),
          _buildApplyButton(),
        ],
      ),
    );
  }

  Widget _buildCategorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Categories'),
        const SizedBox(height: 10),
        buildCheckboxRow('Eggs', isEggsChecked, (value) {
          setState(() => isEggsChecked = value!);
        }),
        buildCheckboxRow('Noodles & Pasta', isNoodlesChecked, (value) {
          setState(() => isNoodlesChecked = value!);
        }),
        buildCheckboxRow('Chips & Crisps', isChipsChecked, (value) {
          setState(() => isChipsChecked = value!);
        }),
        buildCheckboxRow('Fast Food', isFastFoodChecked, (value) {
          setState(() => isFastFoodChecked = value!);
        }),
      ],
    );
  }

  Widget _buildBrandSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Brand'),
        const SizedBox(height: 10),
        buildCheckboxRow('Individual Collection', isIndividualChecked, (value) {
          setState(() => isIndividualChecked = value!);
        }),
        buildCheckboxRow('Cocola', isCocolaChecked, (value) {
          setState(() => isCocolaChecked = value!);
        }),
        buildCheckboxRow('Ifad', isIfadChecked, (value) {
          setState(() => isIfadChecked = value!);
        }),
        buildCheckboxRow('Kazi Farmas', isKaziFarmasChecked, (value) {
          setState(() => isKaziFarmasChecked = value!);
        }),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: fText1, // Update with your color variable
      ),
    );
  }

  Widget _buildApplyButton() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Apply filter logic here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade300,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          'Apply Filter',
          style: TextStyle(
            fontSize: 14,
            color: fText2, // Update with your color variable
          ),
        ),
      ),
    );
  }
}
