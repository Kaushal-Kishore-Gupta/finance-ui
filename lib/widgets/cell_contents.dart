import 'package:flutter/material.dart';

final List<Widget> cellContents = [
  Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xffD6D3D1),
        width: 2.0,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('MIN INVT', style: TextStyle(color: Color(0xff78716C), fontSize: 13),),
        const SizedBox(height: 2,),
        RichText(
          text:  TextSpan(
            children: [
              TextSpan(
                text: '₹',
                style: TextStyle(
                  color: const Color(0xff000000).withOpacity(0.3),
                  fontSize: 24.0,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(width: 4.0),
              ),
              const TextSpan(
                text: '1',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 24.0,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(width: 4.0),
              ),
              TextSpan(
                text: 'Lakh',
                style: TextStyle(
                  color: const Color(0xff000000).withOpacity(0.3),
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
  Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: const BoxDecoration(
      border: Border(
        right: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
        top: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
        bottom: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
      ),
    ),
    child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       const Text('TENURE', style: TextStyle(color: Color(0xff78716C), fontSize: 13),),
       const SizedBox(height: 2,),
       RichText(
         text:  TextSpan(
           children: [
             const TextSpan(
               text: '61',
               style: TextStyle(
                 color: Color(0xff000000),
                 fontSize: 24.0,
               ),
             ),
             const WidgetSpan(
               child: SizedBox(width: 4.0),
             ),
             TextSpan(
               text: 'days',
               style: TextStyle(
                 color: const Color(0xff000000).withOpacity(0.3),
                 fontSize: 24.0,
               ),
             ),
           ],
         ),
       ),
     ],
    ),
  ),
  Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: const BoxDecoration(
      border: Border(
        left: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
        bottom: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
        right: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('NET YIELD', style: TextStyle(color: Color(0xff78716C), fontSize: 13),),
        const SizedBox(height: 2,),
        RichText(
          text:  TextSpan(
            children: [
              const TextSpan(
                text: '13.23',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 24.0,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(width: 4.0),
              ),
              TextSpan(
                text: '%',
                style: TextStyle(
                  color: const Color(0xff000000).withOpacity(0.3),
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
  Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
        right: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('RAISED', style: TextStyle(color: Color(0xff78716C), fontSize: 13),),
        const SizedBox(height: 2,),
        RichText(
          text:  TextSpan(
            children: [
              const TextSpan(
                text: '70',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 24.0,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(width: 4.0),
              ),
              TextSpan(
                text: '%',
                style: TextStyle(
                  color: const Color(0xff000000).withOpacity(0.3),
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
];

final List<Widget> finacialcellContents = [
  Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xffD6D3D1),
        width: 2.0,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('ACTIVE DEALS', style: TextStyle(color: Color(0xff78716C), fontSize: 13),),
        const SizedBox(height: 2,),
        RichText(
          text:  TextSpan(
            children: [
              const TextSpan(
                text: '6',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 24.0,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(width: 4.0),
              ),
              TextSpan(
                text: 'of 18',
                style: TextStyle(
                  color: const Color(0xff000000).withOpacity(0.3),
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
  Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: const BoxDecoration(
      border: Border(
        right: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
        top: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
        bottom: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('RAISED', style: TextStyle(color: Color(0xff78716C), fontSize: 13),),
        const SizedBox(height: 2,),
        RichText(
          text:  TextSpan(
            children: [
              TextSpan(
                text: '₹',
                style: TextStyle(
                  color: const Color(0xff000000).withOpacity(0.3),
                  fontSize: 24.0,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(width: 4.0),
              ),
              const TextSpan(
                text: '6.94',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 24.0,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(width: 4.0),
              ),
              TextSpan(
                text: 'Cr',
                style: TextStyle(
                  color: const Color(0xff000000).withOpacity(0.3),
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
  Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: const BoxDecoration(
      border: Border(
        left: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
        bottom: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
        right: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('MATURED DEALS', style: TextStyle(color: Color(0xff78716C), fontSize: 13),),
        const SizedBox(height: 2,),
        RichText(
          text:  TextSpan(
            children: [
              const TextSpan(
                text: '12',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 24.0,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(width: 4.0),
              ),
              TextSpan(
                text: 'of 18',
                style: TextStyle(
                  color: const Color(0xff000000).withOpacity(0.3),
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
  Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
        right: BorderSide(
          color: Color(0xffD6D3D1),
          width: 2.0,
        ),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('ON TIME PAYMENT', style: TextStyle(color: Color(0xff78716C), fontSize: 13),),
        const SizedBox(height: 2,),
        RichText(
          text:  TextSpan(
            children: [
              const TextSpan(
                text: '100',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 24.0,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(width: 4.0),
              ),
              TextSpan(
                text: '%',
                style: TextStyle(
                  color: const Color(0xff000000).withOpacity(0.3),
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
];