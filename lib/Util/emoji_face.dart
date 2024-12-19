// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';

class EmojiFace extends StatelessWidget {
  final String emojiFace;

  const EmojiFace({
    Key? key, 
    required this.emojiFace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
         emojiFace,
          style: TextStyle(
            fontSize: 16,
          ),
          ),
        ),
    );
  }
}