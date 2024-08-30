// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:grapple/helpers/space.dart';

class UserProfileStat extends StatelessWidget {

  final String name;
  final int thisWeekCount;
  final int inTotalCount;
  
  const UserProfileStat(this.name, this.thisWeekCount, this.inTotalCount);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.5, color: Colors.black),
        ),
      ),
      height: 25,
      //padding: EdgeInsets.only(left: 16, right: 64),
      width: double.infinity,
      child: Row(
        children: [ 
          HSpace(16),
          Container(
            width: 50,
            child: Text(name)
          ),
          Spacer(),
          Text(thisWeekCount.toString()),
          Spacer(),
          Text(inTotalCount.toString()),
          Spacer()
        ]           
      ),
    );
  }
}