  import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';

Widget buildHeader(BuildContext context) {
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
        title: Padding(
          padding: const EdgeInsets.only(top: 40, right: 40),
          child: Center(
            child: Text(
              'Filters',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: fText1,
              ),
            ),
          ),
        ),
      ),
    );
  }