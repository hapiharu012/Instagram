import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Todoリスト'),
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
  final _todoList = [];
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inverseSurface,
        title: Text(widget.title),
        leading: const Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _todoList
              .map((e) => ListTile(
                    title: Text(e),
                    trailing: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('タイトル'),
                  content: TextField(
                    controller: _textController,
                    autofocus: true,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('キャンセル'),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _todoList.add(_textController.text);
                        });
                        _textController.clear();
                        Navigator.pop(context);
                      },
                      child: const Text('追加'),
                    ),
                  ],
                );
              });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
