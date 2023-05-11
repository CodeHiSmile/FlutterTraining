import 'package:flutter/material.dart';
import 'package:flutter_training/ui/chapter_3/food_screen.dart';
import 'package:flutter_training/ui/chapter_4/exercise_image.dart';
import 'package:flutter_training/ui/chapter_5/login_film_screen.dart';
import 'package:flutter_training/ui/chapter_6/default/movie_home_screen.dart';

void main() {
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Training'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _buildButton(
              title: "Chương 3",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FoodScreen(),
                  ),
                );
              },
            ),
            _buildButton(
              title: "Chương 4",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExerciseImageScreen(),
                  ),
                );
              },
            ),
            _buildButton(
              title: "Chương 5",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginFilmScreen(),
                  ),
                );
              },
            ),
            _buildButton(
              title: "Chương 6",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MovieHomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    String title = '',
    Function? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
          onTap?.call();
        },
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
