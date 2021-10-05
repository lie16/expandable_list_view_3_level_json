import 'package:expandable_list_view_3_level_json/view/json_expandable_list_view.dart';
import 'package:expandable_list_view_3_level_json/view/json_expandable_list_view_method_two.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      //Should you require different appbar
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      drawer: const Drawer(child: JSONExpandableListViewTwo()),
      body: const Center(child: JSONExpandableListView()),
    ));
  }
}
