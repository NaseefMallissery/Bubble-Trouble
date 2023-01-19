import 'package:bubble_truoble/screens/home_screen/controller/player_controller.dart';
import 'package:bubble_truoble/screens/home_screen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
    
      providers: [
        ChangeNotifierProvider(create:(context) => PlayerProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          
        ),
        
        home: const HomePage(),
      
      ),
    );
  }
}
