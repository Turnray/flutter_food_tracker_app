import 'package:flutter/material.dart';
import 'package:flutter_food_tracker_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

//-----------------------------------------
void main() async {
//----------------------------------
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ejjohztikqxyamzursdq.supabase.co/rest/v1/',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVqam9oenRpa3F4eWFtenVyc2RxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzUyMDkyMjEsImV4cCI6MjA5MDc4NTIyMX0.4OBH602XwY_FtxkAw93VlU-6Fqv1-lltvdOuDHMCKg8',
  );

//---------------------------------

  runApp(FlutterFoodTracker(),
  );
}

//-----------------------------------------
class FlutterFoodTracker extends StatefulWidget {
  const FlutterFoodTracker({super.key});

  @override
  State<FlutterFoodTracker> createState() => _FlutterFoodTrackerState();
}

class _FlutterFoodTrackerState extends State<FlutterFoodTracker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.promptTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}