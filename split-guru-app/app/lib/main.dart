import 'package:app/widgets/user_selection/user_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SplitGuru',
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color.fromARGB(255, 35, 30, 47)),
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "Who's using?",
                style: GoogleFonts.tinos(
                    fontSize: 40,
                    // fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 40),
              UserCards(),
            ],
          ),
        ),
      ),
    );
  }
}
