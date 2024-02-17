import 'package:evolveai/pallete.dart';
import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String headerText;
  final String discriptionText;
  const FeatureBox(
      {super.key,
      required this.color,
      required this.headerText,
      required this.discriptionText});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 35,
        ),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            )),
        child: Padding(
          padding: const EdgeInsets.only(top:20.0 , bottom: 20, left:15 ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  headerText,
                  style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Text(
                  discriptionText,
                  style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.blackColor,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
