import 'package:assignment/screens/purchasing.dart';
import 'package:assignment/text.dart';
import 'package:assignment/widgets/cell_contents.dart';
import 'package:assignment/widgets/rectangle_list.dart';
import 'package:assignment/widgets/small_rectangle_carousel.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: -5,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back,color:  Color(0xff15803D),),
        title: const Text('Back to Deals', style: TextStyle(fontSize: 18, color: Color(0xff15803D)),),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffE7E5E4),
                    width: 2.0,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Agrizy',
                      style: TextStyle(
                        color: Color(0xff152420),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0xff78716C),
                      ),
                    ),
                    TextSpan(
                      text: 'Keshav Industries',
                      style: TextStyle(
                        color: Color(0xff78716C),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                TextStorage.getTextByIndex(0),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontSize: 14, color: Color(0xff78716C)),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Flexible(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.8,
                    crossAxisSpacing: 0
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return AspectRatio(
                      aspectRatio: 4.0,
                      child: cellContents[index],
                    );
                  },
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  const Text('Clients', style: TextStyle(fontSize: 20),),
                  Text('Google Google Google', style: TextStyle(fontSize: 28, color: const Color(0xff000000).withOpacity(0.2)),),
                  const SizedBox(height: 20,),
                  const Text('Backed By', style: TextStyle(fontSize: 20),),
                  Text('Google Google Google', style: TextStyle(fontSize: 28, color: const Color(0xff000000).withOpacity(0.2)),),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Highlights', style: TextStyle(fontSize: 20),),
            ),
            const LongRectangleList(),
            const Divider(),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Key Metrics', style: TextStyle(fontSize: 20),),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SmallRectangleCarousel(),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Flexible(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.8,
                      crossAxisSpacing: 0
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return AspectRatio(
                      aspectRatio: 4.0,
                      child: finacialcellContents[index],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Documents', style: TextStyle(fontSize: 20),),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/doc_icon.png'),
                    const Spacer(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Invoice Discounting Contract', style: TextStyle(fontSize: 18, color: Color(0xff000000)),),
                            SizedBox(height: 10,),
                            Text('All the legalese surrounding this\ndeal and how it relates to you.', style: TextStyle(fontSize: 14, color: Color(0xff78716C)),),
                          ],
                        ),
                        Icon(Icons.download_for_offline_outlined),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/card_icon.png'),
                    const Spacer(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Company Pitch Deck', style: TextStyle(fontSize: 18, color: Color(0xff000000)),),
                            SizedBox(height: 10,),
                            Text('Read more about the company and \nsee how they pitch to investors.', style: TextStyle(fontSize: 14, color: Color(0xff78716C)),),
                          ],
                        ),
                        Icon(Icons.download_for_offline_outlined),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50,),
          ],
        ),
      ),
      bottomNavigationBar: BottomRow(),
    );
  }
}
class BottomRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Filled', style: TextStyle(fontSize: 15, color: Color(0xff000000).withOpacity(0.4)),),
                const SizedBox(height: 2,),
                Text('30%', style: TextStyle(fontSize: 24, color: Color(0xff000000)),),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff15803D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fixedSize: Size.fromHeight(50.0),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PurchasingScreen()));
                },
                child: Text('Tap to Invest', style: TextStyle(fontSize: 20, color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
