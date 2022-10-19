import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DIO.me First Flutter App', // Modificando o título
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'DIO.me First Flutter App'),
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
      _counter += 1541; // Alteração do Counter
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'How many stars you give me?', // Alteração da mensagem
            ),
            Text(
              '$_counter',
              style: Theme.of(context)
                  .textTheme
                  .headline1, // Alterando tamanho do texto do counter
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'More Stars!', // Alterando mensagem da tooltip
        child: const Icon(
          Icons.star, // Alterando o ícone para estrela
          color: Colors.yellowAccent, // Alterando cor do ícone
        ),
      ),
    );
  }
}
