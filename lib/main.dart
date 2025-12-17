import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/titulo_secao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(title: Text('Widget de conteudo')),
        body: Column(

          children: [TituloSecao(titulo: 'textos'),
            Text('eu gosto de ir para a praia', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            Text('agora to indo dormir', style: TextStyle(
              fontSize: 18,
            ),),

            Divider(),
            TituloSecao(titulo: 'imagem'),
            Image.network(
              'https://img.olx.com.br/images/49/496524015588365.jpg',
              height: 300,
              width: 300,
            ),

            Divider(),
            TituloSecao(titulo: 'icone'),
          ],
        ),
      ),
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
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
