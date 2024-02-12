import 'package:flutter/material.dart';

import 'alldone_screen.dart';

class ContractScreen extends StatefulWidget {
  const ContractScreen({super.key});

  @override
  State<ContractScreen> createState() => _ContractScreenState();
}

class _ContractScreenState extends State<ContractScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/contract.png'),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AllDone()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xff16A34A),
            ),
            child: Text(
              'Sign Contract',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
