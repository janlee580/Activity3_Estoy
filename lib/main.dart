import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity 3: Buttons and Interaction',
      debugShowCheckedModeBanner: false,
      home: ButtonInteractionExample(),
    );
  }
}

class ButtonInteractionExample extends StatefulWidget {
  const ButtonInteractionExample({super.key});

  @override
  State<ButtonInteractionExample> createState() =>
      _ButtonInteractionExampleState();
}

class _ButtonInteractionExampleState extends State<ButtonInteractionExample> {
  String _message = 'Press a button to change this text.';

  void _onElevatedButtonPressed() {
    setState(() {
      _message = 'You pressed the ElevatedButton!';
    });
  }

  void _onTextButtonPressed() {
    setState(() {
      _message = 'You pressed the TextButton!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity 3: Buttons'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),

            // ElevatedButton
            ElevatedButton(
              onPressed: _onElevatedButtonPressed,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.teal,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 10),

            // TextButton
            TextButton(
              onPressed: _onTextButtonPressed,
              child: Text(
                'Text Button',
                style: TextStyle(color: Colors.teal, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
