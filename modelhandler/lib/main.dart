import 'package:flutter/material.dart';
import 'package:modelhandler/screen/chat_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://hlyctypicyxgbysnhljq.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhseWN0eXBpY3l4Z2J5c25obGpxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzE4Nzc0NjMsImV4cCI6MjA4NzQ1MzQ2M30.EIWw8y_uy8pK7Rpo8p9Qt7BGXslRZ5q2GtYFCeT8qGE',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ChatPage(username: 'Franshua'),
      debugShowCheckedModeBanner: false,
    );
  }
}
