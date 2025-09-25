import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  final ValueNotifier<bool> _dark = ValueNotifier<bool>(true);
  final ValueNotifier<double> _widthFactor = ValueNotifier<double>(1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ValueListenableBuilder<bool>(
            valueListenable: _dark,
            builder: (context, color, child) {
              return ValueListenableBuilder<double>(
                valueListenable: _widthFactor,
                builder: (context, factor, child) {
                  return Scaffold(
                      backgroundColor:
                          _dark.value ? Colors.black : Colors.white,
                      appBar: AppBar(
                        actions: [
                          Switch(
                            value: _dark.value,
                            onChanged: (value) {
                              _dark.value = value;
                            },
                          ),
                          DropdownButton<double>(
                            value: _widthFactor.value,
                            onChanged: (value) {
                              _widthFactor.value = value!;
                            },
                            items: [
                              DropdownMenuItem<double>(
                                value: 0.5,
                                child: Text('Size: 50%'),
                              ),
                              DropdownMenuItem<double>(
                                value: 0.75,
                                child: Text('Size: 75%'),
                              ),
                              DropdownMenuItem<double>(
                                value: 1.0,
                                child: Text('Size: 100%'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      body: Center(
                          child: Container(
                        width: MediaQuery.of(context).size.width *
                            _widthFactor.value,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FarmDetails(),
                          ],
                        ),
                      )));
                },
              );
            }));
  }
}

class FarmDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 1016,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 1016,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Color(0xFFF9FCF7)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 884,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(
                              top: 16,
                              left: 16,
                              right: 16,
                              bottom: 8,
                            ),
                            decoration: BoxDecoration(color: Color(0xFFF9FCF7)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(width: 18, height: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 23,
                                    padding: const EdgeInsets.only(right: 48),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            'Farm Details',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF111C0C),
                                              fontSize: 18,
                                              fontFamily: 'Lexend',
                                              height: 0.07,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD6E8CE),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF3DD311),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 32,
                                          padding: const EdgeInsets.only(bottom: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: double.infinity,
                                                child: Text(
                                                  'Total Farm Size',
                                                  style: TextStyle(
                                                    color: Color(0xFF111C0C),
                                                    fontSize: 16,
                                                    fontFamily: 'Lexend',
                                                    height: 0.09,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 56,
                                          padding: const EdgeInsets.all(16),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAF2E8),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 138,
                                                child: Text(
                                                  'Enter  farm size',
                                                  style: TextStyle(
                                                    color: Color(0xFF5E994C),
                                                    fontSize: 16,
                                                    fontFamily: 'Lexend',
                                                    height: 0.09,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 32,
                                          padding: const EdgeInsets.only(bottom: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: double.infinity,
                                                child: Text(
                                                  'Unit',
                                                  style: TextStyle(
                                                    color: Color(0xFF111C0C),
                                                    fontSize: 16,
                                                    fontFamily: 'Lexend',
                                                    height: 0.09,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 358,
                                          height: 32,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAF2E8),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 47,
                            padding: const EdgeInsets.only(
                              top: 16,
                              left: 16,
                              right: 16,
                              bottom: 8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Primary Crops',
                                    style: TextStyle(
                                      color: Color(0xFF111C0C),
                                      fontSize: 18,
                                      fontFamily: 'Lexend',
                                      height: 0.07,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 288,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 2, color: Color(0xFFD6E8CE)),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rice',
                                              style: TextStyle(
                                                color: Color(0xFF111C0C),
                                                fontSize: 16,
                                                fontFamily: 'Lexend',
                                                height: 0.09,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 2, color: Color(0xFFD6E8CE)),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Coconut',
                                              style: TextStyle(
                                                color: Color(0xFF111C0C),
                                                fontSize: 16,
                                                fontFamily: 'Lexend',
                                                height: 0.09,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 2, color: Color(0xFFD6E8CE)),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rubber',
                                              style: TextStyle(
                                                color: Color(0xFF111C0C),
                                                fontSize: 16,
                                                fontFamily: 'Lexend',
                                                height: 0.09,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 2, color: Color(0xFFD6E8CE)),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Tea',
                                              style: TextStyle(
                                                color: Color(0xFF111C0C),
                                                fontSize: 16,
                                                fontFamily: 'Lexend',
                                                height: 0.09,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 2, color: Color(0xFFD6E8CE)),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Coffee',
                                              style: TextStyle(
                                                color: Color(0xFF111C0C),
                                                fontSize: 16,
                                                fontFamily: 'Lexend',
                                                height: 0.09,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 2, color: Color(0xFFD6E8CE)),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Other',
                                              style: TextStyle(
                                                color: Color(0xFF111C0C),
                                                fontSize: 16,
                                                fontFamily: 'Lexend',
                                                height: 0.09,
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
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 32,
                                          padding: const EdgeInsets.only(bottom: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: double.infinity,
                                                child: Text(
                                                  'Other',
                                                  style: TextStyle(
                                                    color: Color(0xFF111C0C),
                                                    fontSize: 16,
                                                    fontFamily: 'Lexend',
                                                    height: 0.09,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 56,
                                          padding: const EdgeInsets.all(16),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAF2E8),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 171,
                                                child: Text(
                                                  'Specify  other crops',
                                                  style: TextStyle(
                                                    color: Color(0xFF5E994C),
                                                    fontSize: 16,
                                                    fontFamily: 'Lexend',
                                                    height: 0.09,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 32,
                                          padding: const EdgeInsets.only(bottom: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: double.infinity,
                                                child: Text(
                                                  'Enter your soil report',
                                                  style: TextStyle(
                                                    color: Color(0xFF111C0C),
                                                    fontSize: 16,
                                                    fontFamily: 'Lexend',
                                                    height: 0.09,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 358,
                                          height: 61,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAF2E8),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 20,
                                                top: 7,
                                                child: Container(
                                                  width: 56,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage("https://picsum.photos/56/24"),
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 20,
                                                top: 31,
                                                child: Container(width: 56, height: 24),
                                              ),
                                              Positioned(
                                                left: 11,
                                                top: 31,
                                                child: SizedBox(
                                                  width: 88,
                                                  height: 14,
                                                  child: Text(
                                                    'chose file',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontFamily: 'Lexend',
                                                      height: 0.09,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 328,
                                                top: 7,
                                                child: Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage("https://picsum.photos/24/24"),
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 132,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 48,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(vertical: 12),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 2, color: Color(0xFFD6E8CE)),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'I practice organic farming',
                                                style: TextStyle(
                                                  color: Color(0xFF111C0C),
                                                  fontSize: 16,
                                                  fontFamily: 'Lexend',
                                                  height: 0.09,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 64,
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 84,
                                          height: 40,
                                          padding: const EdgeInsets.symmetric(horizontal: 16),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAF2E8),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Back',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color(0xFF111C0C),
                                                        fontSize: 14,
                                                        fontFamily: 'Lexend',
                                                        height: 0.11,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Container(
                                          width: 145,
                                          padding: const EdgeInsets.symmetric(horizontal: 16),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF3DD311),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Complete Setup',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color(0xFF111C0C),
                                                        fontSize: 14,
                                                        fontFamily: 'Lexend',
                                                        height: 0.11,
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 20,
                            decoration: BoxDecoration(color: Color(0xFFF9FCF7)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}