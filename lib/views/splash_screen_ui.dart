import 'package:flutter/material.dart';
import 'package:flutter_food_tracker_app/views/show_all_food_tracker_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ShowAllFoodTrackerUi(),
          ),
        );
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[800],
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 200,
                ),
                Text(
                  'FOOD TRACKER',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[200],
                 ),
                ),
                SizedBox(height: 5),
                Text(
                  '🥪🍧🍠🍣🍺🧋',
                  style: TextStyle(
                    fontSize: 40),
                ),
                SizedBox(height: 25),
                CircularProgressIndicator(
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}