// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
 final color;
 final String Category;
 final FontWeight;

  // ignore: use_super_parameters
  const CategoryTile({
    Key? key,
    required this.color,
    required this.Category,
    required this.FontWeight,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),

        child: Text(
          Category,
          style: TextStyle(

           fontWeight: FontWeight,
           color: color,
          ),
        ),
      ),
    );
  }
}