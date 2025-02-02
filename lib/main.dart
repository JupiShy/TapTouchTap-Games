import 'package:flutter/material.dart';
import 'package:taptouchtap/game_names.dart';
import 'package:taptouchtap/about_popup.dart';
import 'package:taptouchtap/games/click_the_circle.dart';

import 'buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap Touch Tap',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Games list'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  int crossAxisCount = constraints.maxWidth > 800 ? 4 : 2;
                  return GridView.count(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.5,
                    children: [
                      MenuIconButton(onPressed: _incrementCounter, icon: Icons.panorama_vertical_outlined, label: GameNames.magnetic.value),
                      MenuIconButton(onPressed: _incrementCounter, icon: Icons.numbers, label: GameNames.game2048.value),
                      MenuIconButton(onPressed: openClickTheCircle, icon: Icons.circle, label: GameNames.clickTheCircle.value),
                      MenuIconButton(onPressed: _incrementCounter, icon: Icons.ssid_chart, label: GameNames.fractal.value),
                      MenuIconButton(onPressed: _incrementCounter, icon: Icons.sports_martial_arts, label: GameNames.squishy.value),
                      MenuIconButton(onPressed: _incrementCounter, icon: Icons.mood, label: GameNames.wideSmile.value),
                      MenuIconButton(onPressed: _incrementCounter, icon: Icons.image_search, label: GameNames.sandBox.value),
                      MenuIconButton(onPressed: _incrementCounter, icon: Icons.disabled_by_default_outlined, label: GameNames.ticTacToe.value),
                    ],
                  );
                },
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => aboutPopup(context),
        tooltip: 'About',
        child: const Icon(Icons.info_outline),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

    void openClickTheCircle(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ClickTheCircle()),
    );
  }
}
