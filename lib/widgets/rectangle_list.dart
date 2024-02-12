import 'package:flutter/material.dart';

import '../text.dart';

class LongRectangleList extends StatelessWidget {
  const LongRectangleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(10.0),
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.lightbulb),
                  Spacer(),
                  Text(TextStorage.getTextByIndex(0),),
                ],
              ),
            );
          }),
    );
  }
}