import 'package:flutter/material.dart';
import 'package:recipe_book/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hola mundo',
        home: RecipeBook());
  }
}

class RecipeBook extends StatelessWidget {
  const RecipeBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Recipe Book',
            style: TextStyle(color: const Color.fromARGB(255, 249, 249, 249)),
          ),
          bottom: TabBar(
              indicatorColor: const Color.fromARGB(255, 248, 245, 245),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "home",
                )
              ]),
        ),
        body: TabBarView(
          children: [HomeScreen()],
        ),
      ),
    );
  }
}
