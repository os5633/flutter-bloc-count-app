import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/bloc_pattern/bloc/count_bloc.dart';
import 'package:flutter_application_2/src/bloc_pattern/components/count_view.dart';
class BlocDisplayWidget extends StatefulWidget {
 const BlocDisplayWidget({Key? key}) : super(key: key);

  @override
  _BlocDisplayWidgetState createState() => _BlocDisplayWidgetState();
}

class _BlocDisplayWidgetState extends State<BlocDisplayWidget> {
  final CountBloc countBloc = CountBloc();
  @override
  void dispose() {
    super.dispose();
    countBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bloc 패턴"),
      ),
      body: CountView(countBloc: countBloc),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
        onPressed: () {
          countBloc.add();
        },
      ),
    );
  }
}
