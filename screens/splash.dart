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
        builder: (BuildContext context, bool color, Widget? child) {
          return ValueListenableBuilder<double>(
            valueListenable: _widthFactor,
            builder: (BuildContext context, double factor, Widget? child) {
              return Scaffold(
                backgroundColor: _dark.value ? Colors.black : Colors.white,
                appBar: AppBar(
                  actions: <Widget>[
                    Switch(
                      value: _dark.value,
                      onChanged: (bool value) {
                        _dark.value = value;
                      },
                    ),
                    DropdownButton<double>(
                      value: _widthFactor.value,
                      onChanged: (double? value) {
                        if (value != null) {
                          _widthFactor.value = value;
                        }
                      },
                      items: <DropdownMenuItem<double>>[
                        const DropdownMenuItem<double>(
                          value: 0.5,
                          child: Text('Size: 50%'),
                        ),
                        const DropdownMenuItem<double>(
                          value: 0.75,
                          child: Text('Size: 75%'),
                        ),
                        const DropdownMenuItem<double>(
                          value: 1.0,
                          child: Text('Size: 100%'),
                        ),
                      ],
                    ),
                  ],
                ),
                body: Center(
                  child: Container(
                    width:
                        MediaQuery.of(context).size.width * _widthFactor.value,
                    // The Column was overflowing because it had MainAxisSize.max and its content was too tall.
                    // Wrapping it in SingleChildScrollView allows the content to scroll.
                    // Changing MainAxisSize.max to MainAxisSize.min ensures the Column takes only the space its children need.
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min, // Changed to min
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Depth0Frame0(),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Depth0Frame0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 390,
          height: 1000,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFFF9FCF7)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 850,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 16,
                        right: 16,
                        bottom: 8,
                      ),
                      decoration: const BoxDecoration(color: Color(0xFFF9FCF7)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 23,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 48,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    'Growकृषक',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF111C0C),
                                      fontSize: 18,
                                      fontFamily: 'Lexend',
                                      height: 0.07,
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
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(color: Color(0xFFF9FCF7)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 271,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF9FCF7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 358,
                                    height: 271,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://picsum.photos/358/271",
                                        ),
                                        fit: BoxFit.fill,
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
                      height: 60,
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 16,
                        right: 16,
                        bottom: 12,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'Growकृषक',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF111C0C),
                              fontSize: 18,
                              fontFamily: 'Lexend',
                              height: 0.07,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 16,
                        right: 16,
                        bottom: 12,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'വളരുന്നവൻ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF111C0C),
                              fontSize: 22,
                              fontFamily: 'Lexend',
                              height: 0.06,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(color: Color(0xFFF9FCF7)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 268,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF9FCF7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 358,
                                    height: 268,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://picsum.photos/358/268",
                                        ),
                                        fit: BoxFit.fill,
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
                      height: 40,
                      padding: const EdgeInsets.only(
                        top: 4,
                        left: 16,
                        right: 16,
                        bottom: 12,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'Smart Farming for New Kerala',
                            textAlign: TextAlign.center,
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
                    Container(
                      width: double.infinity,
                      height: 40,
                      padding: const EdgeInsets.only(
                        top: 4,
                        left: 16,
                        right: 16,
                        bottom: 12,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'പുതുപ്പന്തി കേരളത്തിന് പുതിയ കൃഷ്ണി',
                            textAlign: TextAlign.center,
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
                height: 150,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 130,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Loading agricultural statistics...',
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
                          const SizedBox(height: 12),
                          Container(
                            width: double.infinity,
                            height: 8,
                            decoration: ShapeDecoration(
                              color: Color(0xFFD6E8CE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 269,
                                  height: 8,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF3DD311),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                '14 districts, 941 panchayats, 7.5 lakh hectares coconut cultivation',
                                style: TextStyle(
                                  color: Color(0xFF5E994C),
                                  fontSize: 14,
                                  fontFamily: 'Lexend',
                                  height: 0.11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 20,
                      decoration: const BoxDecoration(color: Color(0xFFF9FCF7)),
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