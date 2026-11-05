import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SafeArea(
        child: MockupScreen(),
      ),
    ),
  ));
}

class MockupScreen extends StatelessWidget {
  const MockupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // 1. Top white space (height: 100)
        const SizedBox(height: 100),

        // 2. Blue block (height: 400)
        Container(
          height: 400,
          color: const Color(0xFF4472C4),
        ),

        // 3. Green & Pink row (height: 100)
        SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Green area takes the remaining width
              Expanded(
                child: Container(
                  color: const Color(0xFF70AD47),
                ),
              ),
              // Pink area with fixed width: 100
              Container(
                width: 100,
                color: const Color(0xFFED7D95),
              ),
            ],
          ),
        ),

        // 4. Yellow blocks row (height: 100)
        SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(color: const Color(0xFFFFC000)),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Container(color: const Color(0xFFFFC000)),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Container(color: const Color(0xFFFFC000)),
              ),
            ],
          ),
        ),

        // 5. White spacing gap (height: 20)
        const SizedBox(height: 20),

        // 6. Bottom Pink block (takes the remaining vertical height)
        Expanded(
          child: Container(
            color: const Color(0xFFED7D95),
          ),
        ),
      ],
    );
  }
}