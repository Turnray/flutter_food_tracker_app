import 'package:flutter/material.dart';
import 'package:flutter_food_tracker_app/views/add_food_tracker_ui.dart';

class ShowAllFoodTrackerUi extends StatefulWidget {
  const ShowAllFoodTrackerUi({super.key});

  @override
  State<ShowAllFoodTrackerUi> createState() => _ShowAllFoodTrackerUiState();
}

class _ShowAllFoodTrackerUiState extends State<ShowAllFoodTrackerUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[800],
        title: Text(
          'FOOD TRACKER',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          centerTitle: true,
      ),
      //floating ac buttom
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //เปิดไปหน้า addtaskui แบบย้อนกลับได้
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddFoodTrackerUi(),
            ),
          );
        },
        child: Icon(  
          Icons.add,
          color: Colors.white,
          ),
          backgroundColor: Colors.deepOrange[800],
      ),
      //ตำแหน่ง
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}