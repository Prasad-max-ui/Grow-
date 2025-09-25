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
      debugShowCheckedModeBanner: false, // Suppress debug banner
      theme: ThemeData(
        brightness: _dark.value ? Brightness.dark : Brightness.light,
        colorScheme: _dark.value
            ? const ColorScheme.dark(
                primary: Colors.green,
                secondary: Colors.lightGreen,
                background: Colors.black,
                onBackground: Colors.white,
                onPrimary: Colors.white,
              )
            : const ColorScheme.light(
                primary: Colors.lightGreen,
                secondary: Colors.green,
                background: Colors.white,
                onBackground: Colors.black,
                onPrimary: Colors.black,
              ),
        appBarTheme: AppBarTheme(
          backgroundColor: _dark.value ? Colors.black : Colors.white,
          foregroundColor: _dark.value ? Colors.white : Colors.black,
        ),
        scaffoldBackgroundColor: _dark.value ? Colors.black : Colors.white,
      ),
      home: ValueListenableBuilder<bool>(
        valueListenable: _dark,
        builder: (context, isDark, child) {
          return ValueListenableBuilder<double>(
            valueListenable: _widthFactor,
            builder: (context, factor, child) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Growकृषक Registration'),
                  actions: [
                    Row(
                      children: [
                        Icon(isDark ? Icons.brightness_2 : Icons.brightness_5),
                        Switch(
                          value: isDark,
                          onChanged: (value) {
                            _dark.value = value;
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: DropdownButton<double>(
                        value: factor,
                        onChanged: (double? value) {
                          if (value != null) {
                            _widthFactor.value = value;
                          }
                        },
                        items: const <DropdownMenuItem<double>>[
                          DropdownMenuItem<double>(
                            value: 0.5,
                            child: Text('50%'),
                          ),
                          DropdownMenuItem<double>(
                            value: 0.75,
                            child: Text('75%'),
                          ),
                          DropdownMenuItem<double>(
                            value: 1.0,
                            child: Text('100%'),
                          ),
                        ],
                        underline: const SizedBox.shrink(), // Remove default underline
                        icon: const Icon(Icons.aspect_ratio), // Custom icon
                        dropdownColor: isDark ? Colors.grey[800] : Colors.white,
                        style: TextStyle(color: isDark ? Colors.white : Colors.black),
                      ),
                    ),
                  ],
                ),
                body: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * factor,
                    // The SingleChildScrollView handles potential overflows if content height > screen height
                    child: const SingleChildScrollView(
                      child: WelcomeRegistration(),
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

class WelcomeRegistration extends StatelessWidget {
  const WelcomeRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    // Removed the outer Column as it was redundant.
    // The top-level Container now defines the width of the form.
    // Removed fixed height to allow SingleChildScrollView to size based on content.
    return Container(
      width: 390,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.background),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Allow column to shrink-wrap its children
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Container with background color for the main content area.
          // Removed fixed height, it will size based on its child.
          Container(
            width: double.infinity,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.background),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Allow column to shrink-wrap its children
              mainAxisAlignment: MainAxisAlignment.start, // Changed from spaceBetween to start
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Main content block
                // Removed fixed height, it will size based on its child (the inner Column).
                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Allow column to shrink-wrap its children
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Image section
                      Container(
                        width: double.infinity,
                        height: 320,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      // Welcome text section
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 16,
                          right: 16,
                          bottom: 12,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Welcome to Growकृषक',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onBackground,
                                fontSize: 28,
                                fontFamily: 'Epilogue',
                                // Removed specific height to avoid text clipping/layout issues
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Subtitle text section
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                          top: 4,
                          left: 16,
                          right: 16,
                          bottom: 12,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Your guide to sustainable farming in Kerala',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onBackground,
                                fontSize: 16,
                                fontFamily: 'Epilogue',
                                // Removed specific height
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Full Name input field
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          padding: const EdgeInsets.all(16),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Full Name',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 16,
                                  fontFamily: 'Epilogue',
                                  // Removed specific height
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Select District input field
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Container(
                          width: double.infinity, // Use double.infinity for expanded width
                          height: 56,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Align( // Use Align to position text, or a Row with Spacer.
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0), // Adjust padding as needed
                              child: Text(
                                'Select District',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onBackground,
                                  fontSize: 16,
                                  fontFamily: 'Epilogue',
                                  // Removed specific height
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Select Panchayat input field
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Container(
                          width: double.infinity, // Use double.infinity for expanded width
                          height: 56,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Select Panchayat',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onBackground,
                                  fontSize: 16,
                                  fontFamily: 'Epilogue',
                                  // Removed specific height
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Phone Number input field
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          padding: const EdgeInsets.all(16),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Phone Number',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 16,
                                  fontFamily: 'Epilogue',
                                  // Removed specific height
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Primary Crop input field
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Container(
                          width: double.infinity, // Use double.infinity for expanded width
                          height: 56,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Primary Crop',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onBackground,
                                  fontSize: 16,
                                  fontFamily: 'Epilogue',
                                  // Removed specific height
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Language selection buttons
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisSize: MainAxisSize.min, // Use min to wrap content
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              // width: 107.14, // Removed fixed width, let padding and content define it
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12, // Added vertical padding for better button look
                              ),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Malayalam',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onBackground,
                                  fontSize: 14,
                                  fontFamily: 'Epilogue',
                                  // Removed specific height
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              // width: 82.92, // Removed fixed width
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12, // Added vertical padding
                              ),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'English',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onBackground,
                                  fontSize: 14,
                                  fontFamily: 'Epilogue',
                                  // Removed specific height
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Farm details button
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 48,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Center( // Center the text within the button
                            child: Text(
                              'Farm details',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontSize: 16,
                                fontFamily: 'Epilogue',
                                // Removed specific height
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Footer space
                Container(
                  width: double.infinity,
                  height: 20,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.background),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}