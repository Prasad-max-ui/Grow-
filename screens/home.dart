import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  final ValueNotifier<bool> _dark = ValueNotifier<bool>(true);
  final ValueNotifier<double> _widthFactor = ValueNotifier<double>(1.0);

  FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ValueListenableBuilder<bool>(
        valueListenable: _dark,
        builder: (context, isDark, child) {
          return ValueListenableBuilder<double>(
            valueListenable: _widthFactor,
            builder: (context, factor, child) {
              return Scaffold(
                backgroundColor: isDark ? Colors.black : Colors.white,
                appBar: AppBar(
                  backgroundColor: isDark ? Colors.black : Colors.white,
                  actions: [
                    Switch(
                      value: isDark,
                      onChanged: (value) {
                        _dark.value = value;
                      },
                    ),
                    DropdownButton<double>(
                      value: factor,
                      onChanged: (double? value) {
                        if (value != null) {
                          _widthFactor.value = value;
                        }
                      },
                      items: const <DropdownMenuItem<double>>[
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
                    width:
                        MediaQuery.of(context).size.width * _widthFactor.value,
                    // The Column is now constrained by the Expanded child to fill available vertical space.
                    child: Column(
                      children: <Widget>[
                        Expanded( // Ensure HomeDashboard fills available vertical space for scrolling
                          child: HomeDashboard(),
                        ),
                      ],
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

class HomeDashboard extends StatelessWidget {
  HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 390, // Fixed width container for content
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity, // Takes width of parent (390)
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(color: Color(0xFFF9FCF7)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
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
                                right: 7,
                                bottom: 8,
                              ),
                              decoration: const BoxDecoration(
                                color: Color(0xFFF9FCF7),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg",
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(
                                        width: 100,
                                        child: Text(
                                          'Home',
                                          style: TextStyle(
                                            color: Color(0xFF111C0C),
                                            fontSize: 18,
                                            fontFamily: 'Epilogue',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(), // Use Spacer to push elements to the right
                                  SizedBox(
                                    height: 48,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 24,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Center( // Center the icon visually
                                            child: SizedBox( // Explicitly size the icon's container
                                              width: 20,
                                              height: 20,
                                              child: Stack(
                                                children: <Widget>[
                                                  Positioned.fill(
                                                    child: Container(
                                                        // Content for the icon, e.g., an actual Icon widget
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 16), // Spacing between icons
                                  SizedBox(
                                    height: 32,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 38,
                                          height: 32,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Center( // Center the icon visually
                                            child: SizedBox( // Explicitly size the icon's container
                                              width: 20, // Icon size
                                              height: 20, // Icon size
                                              child: Stack(
                                                children: <Widget>[
                                                  Positioned.fill(
                                                    child: Container(
                                                        // Content for the icon, e.g., an actual Icon widget
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 32,
                                          height: 32,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg",
                                              ),
                                              fit: BoxFit.contain,
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
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 128,
                                    height: 128,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                          "https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg",
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(64),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  SizedBox(
                                    height: 128,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 28,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const <Widget>[
                                              Text(
                                                'Prasad Desai',
                                                style: TextStyle(
                                                  color: Color(0xFF111C0C),
                                                  fontSize: 22,
                                                  fontFamily: 'Epilogue',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const <Widget>[
                                            Text(
                                              'Sustainability Score: 85',
                                              style: TextStyle(
                                                color: Color(0xFF5E994C),
                                                fontSize: 16,
                                                fontFamily: 'Epilogue',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
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
                                children: const <Widget>[
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Continue Journey',
                                      style: TextStyle(
                                        color: Color(0xFF111C0C),
                                        fontSize: 18,
                                        fontFamily: 'Epilogue',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 102,
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 228,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const <Widget>[
                                              SizedBox(
                                                width: double.infinity,
                                                height: 21,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      width: double.infinity,
                                                      child: Text(
                                                        'Banana Farm',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFF5E994C,
                                                          ),
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'Epilogue',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              SizedBox(
                                                width: double.infinity,
                                                height: 20,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      width: double.infinity,
                                                      child: Text(
                                                        'Level 3/10',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFF111C0C,
                                                          ),
                                                          fontSize: 16,
                                                          fontFamily:
                                                              'Epilogue',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              SizedBox(
                                                width: double.infinity,
                                                height: 21,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      width: double.infinity,
                                                      child: Text(
                                                        'Progress: 30%',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFF5E994C,
                                                          ),
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'Epilogue',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        Container(
                                          width: 130,
                                          height: 70,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            image: const DecorationImage(
                                              image: NetworkImage(
                                                "https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg",
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
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
                              height: 40,
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    height: 8,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFD6E8CE),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: 107,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF44ED11),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
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
                                children: const <Widget>[
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Quick Stats',
                                      style: TextStyle(
                                        color: Color(0xFF111C0C),
                                        fontSize: 18,
                                        fontFamily: 'Epilogue',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(24),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                            width: 1,
                                            color: Color(0xFFD6E8CE),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const <Widget>[
                                          SizedBox(
                                            width: double.infinity,
                                            height: 24,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Tasks',
                                                    style: TextStyle(
                                                      color: Color(0xFF111C0C),
                                                      fontSize: 16,
                                                      fontFamily: 'Epilogue',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          SizedBox(
                                            width: double.infinity,
                                            height: 30,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    '12',
                                                    style: TextStyle(
                                                      color: Color(0xFF111C0C),
                                                      fontSize: 24,
                                                      fontFamily: 'Epilogue',
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
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(24),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                            width: 1,
                                            color: Color(0xFFD6E8CE),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const <Widget>[
                                          SizedBox(
                                            width: double.infinity,
                                            height: 24,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Library ',
                                                    style: TextStyle(
                                                      color: Color(0xFF111C0C),
                                                      fontSize: 16,
                                                      fontFamily: 'Epilogue',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          SizedBox(
                                            width: double.infinity,
                                            height: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(24),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                            width: 1,
                                            color: Color(0xFFD6E8CE),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const <Widget>[
                                          SizedBox(
                                            width: double.infinity,
                                            height: 24,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Coins',
                                                    style: TextStyle(
                                                      color: Color(0xFF111C0C),
                                                      fontSize: 16,
                                                      fontFamily: 'Epilogue',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          SizedBox(
                                            width: double.infinity,
                                            height: 30,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    '500',
                                                    style: TextStyle(
                                                      color: Color(0xFF111C0C),
                                                      fontSize: 24,
                                                      fontFamily: 'Epilogue',
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
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(24),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                            width: 1,
                                            color: Color(0xFFD6E8CE),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const <Widget>[
                                          SizedBox(
                                            width: double.infinity,
                                            height: 62,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Mini Game',
                                                    style: TextStyle(
                                                      color: Color(0xFF111C0C),
                                                      fontSize: 38,
                                                      fontFamily: 'Epilogue',
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
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 12,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            height: 40,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                            ),
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF44ED11),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: const <Widget>[
                                                Text(
                                                  'Start New Crop',
                                                  textAlign:
                                                      TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xFF111C0C,
                                                    ),
                                                    fontSize: 14,
                                                    fontFamily: 'Epilogue',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                          Container(
                                            width: double.infinity,
                                            height: 40,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                            ),
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFEAF2E8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: const <Widget>[
                                                Text(
                                                  'Rewards Store',
                                                  textAlign:
                                                      TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xFF111C0C,
                                                    ),
                                                    fontSize: 14,
                                                    fontFamily: 'Epilogue',
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
                        height: 95,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.only(
                                top: 8,
                                left: 16,
                                right: 16,
                                bottom: 12,
                              ),
                              decoration: const BoxDecoration(
                                color: Color(0xFFF9FCF7),
                                border: Border(
                                  left: BorderSide(color: Color(0xFFEAF2E8)),
                                  top: BorderSide(
                                    width: 1,
                                    color: Color(0xFFEAF2E8),
                                  ),
                                  right: BorderSide(color: Color(0xFFEAF2E8)),
                                  bottom: BorderSide(color: Color(0xFFEAF2E8)),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(27),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 32,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 24,
                                                  height: 24,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 18,
                                                          height: 19,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const <Widget>[
                                              Text(
                                                'Home',
                                                style: TextStyle(
                                                  color: Color(0xFF111C0C),
                                                  fontSize: 12,
                                                  fontFamily: 'Epilogue',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(27),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 32,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 24,
                                                  height: 24,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 24,
                                                          height: 15,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          SizedBox(
                                            width: double.infinity,
                                            height: 18,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const <Widget>[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Community',
                                                    style: TextStyle(
                                                      color: Color(0xFF51936B),
                                                      fontSize: 12,
                                                      fontFamily: 'Public Sans',
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
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 32,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                width: 24,
                                                height: 24,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                        width: 20,
                                                        height: 19,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const <Widget>[
                                            Text(
                                              'Rewards',
                                              style: TextStyle(
                                                color: Color(0xFF5E994C),
                                                fontSize: 12,
                                                fontFamily: 'Epilogue',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 32,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                width: 24,
                                                height: 24,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                        width: 20,
                                                        height: 19,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const <Widget>[
                                            Text(
                                              'Profile',
                                              style: TextStyle(
                                                color: Color(0xFF5E994C),
                                                fontSize: 12,
                                                fontFamily: 'Epilogue',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Color(0xFFF9FCF7),
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
        ],
      ),
    );
  }
}