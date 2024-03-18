
import 'package:flutter/material.dart';

class TotalView extends StatefulWidget {
  const TotalView({super.key});

  @override
  State<TotalView> createState() => _TotalViewState();
}

class _TotalViewState extends State<TotalView> {
  final List<String> items = List<String>.generate(10000, (i) => '$i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
            child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xfffbe8c7),
                  child: Text(items[index]),
                ),
                title: Text('user name'),
                subtitle: Text('User email'),
                trailing: Icon(Icons.more_vert),
              ),
            );
          },
        )),
      ),
    );
  }
}
