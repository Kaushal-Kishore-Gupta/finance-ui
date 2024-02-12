import 'package:assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AllDone extends StatefulWidget {
  const AllDone({super.key});

  @override
  State<AllDone> createState() => _AllDoneState();
}

class _AllDoneState extends State<AllDone> {
  @override
  void initState() {
    super.initState();

    // Add a delay of 2 seconds before navigating to the next screen
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
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
                Icon(Icons.check_circle, color: Colors.white, size: 100,),
                SizedBox(height: 20,),
                Text('All Done!', style: TextStyle(fontSize: 20, color: Colors.white),),
                const SizedBox(height: 10,),
                Text('Redirecting you to the Dashboard.', style: TextStyle(fontSize: 14, color:  Colors.white.withOpacity(0.7)),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
