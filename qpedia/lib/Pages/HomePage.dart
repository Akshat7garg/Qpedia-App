import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qpedia/Pages/UniversitiesPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard(
                    backgroundColor: Color.fromARGB(220, 255, 210, 76),
                    text: 'Question Papers',
                    imagePath: 'assets/question.home.jpg'),
                SizedBox(height: 15),
                _buildCard(
                    backgroundColor: Color(0xFFFFE69A),
                    text: 'Lecture Notes',
                    imagePath: 'assets/notes.home.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFB3E5FC), // very light sky blue
            Color(0xFFBBDEFB), // soft, pastel sky blue
            Color(0xFFE3F2FD), // very pale sky blue, close to white
            Color(0xFFFFFFFF), // pure white
            Color(0xFFE3F2FD), // very pale sky blue, close to white
            Color(0xFFBBDEFB), // soft, pastel sky blue

            // #FFD24C
            // Add more colors as needed
          ],
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
        ),
      ),
    );
  }

  Widget _buildCard({
    required Color backgroundColor,
    required String text,
    required String imagePath,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => UniversitiesPage(
              comingFrom: text.toString(),
            ),
          ),
        );
      },
      child: Container(
        width: 250,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 30, 30, 30).withOpacity(0.2),
              blurRadius: 3,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 15,
                right: 15,
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(218, 255, 255, 255),
                  ),
                  child: Center(
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
