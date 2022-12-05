import 'package:flutter/material.dart';
import 'allrecipies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Thanksgiving',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color.fromARGB(0, 158, 133, 109),
          secondary: Color.fromARGB(0, 178, 185, 89),
        ),
      ),
      home: const MyHomePage(title: 'Thanksgiving Reci'),
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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: const Text('Thanksgiving foods'),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: Recipe.turkeyrecipes.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return instructionPage(index);
                        },
                      ),
                    );
                  },
                  child: buildFoodCard(index),
                );
              })),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Dessert',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Drink',
          )
        ],
      ),
    );
  }

  Widget buildFoodCard(int index) {
    return Card(
      color: Colors.white,
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(listindx(_selectedIndex, index, 1))),
            const SizedBox(
              height: 14.0,
            ),
            Text(listindx(_selectedIndex, index, 0)),
          ],
        ),
      ),
    );
  }

  String listindx(int count, int choose, int actual) {
    List temp = [];
    if (count == 0) temp = Recipe.turkeyrecipes;
    if (count == 1) temp = Recipe.dessertrecipes;
    if (count == 2) temp = Recipe.drinkrecipes;
    Recipe j = temp[choose];
    if (actual == 0) return j.name;
    if (actual == 3) return j.instructions;
    if (actual == 2) return j.ingredients;
    return j.imageurl;
  }

  Widget imageWidget(int index) {
    return Card(
      color: Colors.white,
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(listindx(_selectedIndex, index, 1))),
            const SizedBox(
              height: 14.0,
            ),
            Text(listindx(_selectedIndex, index, 0)),
          ],
        ),
      ),
    );
  }

  Widget instructionPage(int index) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text(listindx(_selectedIndex, index, 0))),
        body: SafeArea(
            child: ListView(
          children: <Widget>[
            Center(
              child: Text('ingredients:'),
            ),
            Center(
              child: Text(
                (listindx(_selectedIndex, index, 2)),
              ),
            ),
            Center(
              child: Text('instructions:'),
            ),
            Center(
              child: Text(listindx(_selectedIndex, index, 3)),
            ),
          ],
        )));
  }
}
