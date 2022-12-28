import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String currentDate = '';

  void setDate() {
    setState(() {
      currentDate = DateFormat('yyyy-MM-dd HH:mm').format(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Текущая дата:',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$currentDate',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: setDate, child: Text('Получить дату'))
          ],
        ),
      ),
    );
  }
}
