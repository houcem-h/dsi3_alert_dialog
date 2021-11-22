import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Dialog example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyAlertDialogPage(title: 'Alert Dialog example'),
    );
  }
}

class MyAlertDialogPage extends StatelessWidget {
  const MyAlertDialogPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                child: const Text('Launch AlertDialog'),
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Important!"),
                          content: const Text("This is an important info"),
                          actions: <Widget>[
                            ElevatedButton(
                              child: const Text("Close"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      }
                  );
                },
            ),
          ],
        ),
      ),
    );
  }

}

