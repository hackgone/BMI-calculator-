import 'package:flutter/material.dart';


class Easy extends StatelessWidget {
  Easy({@required this.colour, this.cardg});
  
  final Color colour;
  final Widget cardg;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardg,
          margin: EdgeInsets.all(15.0),
         
          width: 200.0,
          height: 170.0,
          decoration: BoxDecoration( color: colour,
            borderRadius: BorderRadius.circular(10.0)
          ),
        );
  }
}