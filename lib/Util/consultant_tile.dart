// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ConsultantTile extends StatelessWidget {
  final icon;
  final String name;
  final String category;
  final color;

 // ignore: use_super_parameters
 const ConsultantTile({
   Key? key,
   required this.icon,
   required this.name,
   required this.category,
   required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
           padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
          color: Colors.white,
         borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
             children: [
                ClipRRect(
                 borderRadius: BorderRadius.circular(12),
                  child: Container(
                   padding: EdgeInsets.all(16),
                   color: color,
                   child: Icon(
                    Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   // title
                   Text(
                     name,
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 16,
                      ),
                    ),
                 SizedBox(
                    height: 5,
                  ),
                 // subtitle
                 Text(
                  category,
                   style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
             ),
           ],
         ),
         Icon(Icons.more_horiz),
        ]),
      ),
    );
  }
}