import 'package:flutter/material.dart';
import 'constants.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class IconContent extends StatelessWidget {
  IconContent({@required this.icondata, this.info});
  final IconData icondata;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icondata,
          //color: Colors.purple,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          info,
          style: lableTextStyle,
        )
      ],
    );
  }
}
