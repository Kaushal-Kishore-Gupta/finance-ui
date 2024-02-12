import 'package:assignment/screens/payment_done.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_action/slide_action.dart';

class PurchasingScreen extends StatefulWidget {
  const PurchasingScreen({super.key});

  @override
  State<PurchasingScreen> createState() => _PurchasingScreenState();
}

class _PurchasingScreenState extends State<PurchasingScreen> {

  final num = TextEditingController();
  double _totalSum = 0;
  void _calculateSum(String value) {
    final num1 = int.tryParse(num.text) ?? 0;
    setState(() {
      _totalSum = num1 *(1+0.1311);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left, color: Color(0xff15803D)),
          onPressed: () {Navigator.pop(context);},
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('Purchasing', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Agrizy',
                    style: TextStyle(
                      color: Color(0xff78716C),
                      fontSize: 16.0,
                    ),
                  ),
                  WidgetSpan(
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Color(0xff78716C),
                      size: 16,
                    ),
                  ),
                  TextSpan(
                    text: 'Keshav Industries',
                    style: TextStyle(
                      color: Color(0xff78716C),
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          const Divider(),
          const SizedBox(height: 40,),
          const Center(child: Text('ENTER AMOUNT')),
          const SizedBox(height: 20,),
          Center(
            child: SizedBox(
              width: 170,
              child: Row(
                children: [
                  const Text('₹ ',
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Color(0xffA8A29E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Flexible(
                    child: TextField(
                      controller: num,
                      keyboardType: TextInputType.number,
                      onChanged: _calculateSum,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                      decoration:  const InputDecoration(
                        hintText: 'Min 50000',
                        hintStyle: TextStyle(
                          color: Color(0xffA8A29E),
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total Returns', style: TextStyle(color: Color(0xff475569), fontSize: 15),),
                RichText(
                  text:  TextSpan(
                    children: [
                      const TextSpan(
                        text: '₹ ',
                        style: TextStyle(
                          color: Color(0xff78716C),
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: '$_totalSum',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Net Yeild', style: TextStyle(color: Color(0xff475569), fontSize: 15),),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '13.11 ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      TextSpan(
                        text: '%',
                        style: TextStyle(
                          color: Color(0xff78716C),
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Tenure', style: TextStyle(color: Color(0xff475569), fontSize: 15),),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '61 ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      TextSpan(
                        text: 'days',
                        style: TextStyle(
                          color: Color(0xff78716C),
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const PayButton(),
    );
  }
}

class PayButton extends StatelessWidget {
  const PayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Balance : ₹1,00,000'),
              Text('Required : ₹0'),
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SlideAction(
              stretchThumb: true,
              trackBuilder: (context, state) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffE4E4E7),
                  ),
                  child: const Center(
                    child: Text("SWIPE TO PAY"),
                  ),
                );
              },
              thumbBuilder: (context, state) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: const Color(0xff15803D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: state.isPerformingAction
                      ? const CupertinoActivityIndicator(
                    color: Colors.white,
                  )
                      : const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                );
              },
              action: () async {
                await Future.delayed(
                  const Duration(seconds: 1),
                      () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentDone())),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
