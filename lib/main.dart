import 'package:flutter/material.dart';
import 'package:zegodemo2/voice_call_screen.dart';
import 'package:zegodemo2/video_call_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video and Voice Call App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Zegodemo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  
                  MaterialPageRoute(builder: (context) => const VoiceCallScreen(isGroupChat: false)),
                );
              },
              child: const Text('Voice Call Screen'),
            ),
            const SizedBox(
            height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  
                  MaterialPageRoute(builder: (context) => const VideoCallScreen(isGroupChat: false)),
                );
              },
              child: const Text('Video Call Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
