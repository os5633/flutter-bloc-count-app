import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/bloc_pattern/ui/bloc_display_widget.dart';
import 'package:flutter_application_2/src/stateful/ui/plus_stateful_display_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:const Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: TextButton(
                child:const Text("bloc 패턴"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const BlocDisplayWidget();
                  }));
                },
              ),
            ),
            Center(
              child: TextButton(
                child:const Text("기본 stateful"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return PlusStatefulDisplayWidget();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
