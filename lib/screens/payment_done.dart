import 'package:assignment/screens/contract_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaymentDone extends StatefulWidget {
  const PaymentDone({super.key});

  @override
  State<PaymentDone> createState() => _PaymentDoneState();
}

class _PaymentDoneState extends State<PaymentDone> {
  Widget currentWidget = const PayDone();
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        currentWidget = const GeneratingContract();
      });
    });

    Future.delayed(Duration(seconds: 7), () {
      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ContractScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15803D),
      body: Stack(
        children: [
          Positioned.fill(
            child: Lottie.asset('assets/animations/Flow.json'),
          ),
           Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                currentWidget,
                const SizedBox(height: 30,),
                Text('You are almost there!', style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.7)),),
                const SizedBox(height: 10,),
                Text('Do not leave this page, or press the back button.', style: TextStyle(fontSize: 14, color:  Colors.white.withOpacity(0.7)),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PayDone extends StatelessWidget {
  const PayDone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(Icons.check_circle, color: Colors.white, size: 100,),
        SizedBox(height: 20,),
        Text('Payment Done', style: TextStyle(fontSize: 20, color: Colors.white),),
      ],
    );
  }
}

class GeneratingContract extends StatelessWidget {
  const GeneratingContract({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(Icons.file_copy_outlined, color: Colors.white, size: 100,),
        SizedBox(height: 20,),
        Text('Generating Contract', style: TextStyle(fontSize: 20, color: Colors.white),),
      ],
    );
  }
}