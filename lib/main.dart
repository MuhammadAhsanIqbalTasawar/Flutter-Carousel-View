import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff1A3636),
            title: const Text(
              'Carousel View',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: CarouselView(
                    itemExtent: 180,
                    children: List.generate(10, (int index) {
                      return Container(
                        color: Colors.amber,
                        child: Image.network(
                          'https://picsum.photos/250?random=$index',
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
