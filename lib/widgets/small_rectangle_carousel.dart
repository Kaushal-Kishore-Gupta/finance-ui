import 'package:flutter/material.dart';

import '../text.dart';


class SmallRectangleCarousel extends StatelessWidget {
  const SmallRectangleCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
                color: (index==2) ? Color(0xff15803d) : Color(0xffE7E5E4),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name[index], style: TextStyle(color: (index == 2) ?Colors.white :Color(0xff78716C)),),
                ],
              ),
            );
          }),
    );
  }
}

List <String> name = ['FUNDING','TRACTION','FINANCIALS', 'COMPETITION'];