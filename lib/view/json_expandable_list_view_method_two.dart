import 'dart:convert';
import 'dart:developer';

import 'package:expandable_list_view_3_level_json/model/my_menu.dart';
import 'package:expandable_list_view_3_level_json/model/profile.dart';
import 'package:expandable_list_view_3_level_json/network/get_api.dart';
import 'package:flutter/material.dart';

class JSONExpandableListViewTwo extends StatefulWidget {
  const JSONExpandableListViewTwo({Key? key}) : super(key: key);

  @override
  _JSONExpandableListViewTwoState createState() =>
      _JSONExpandableListViewTwoState();
}

class _JSONExpandableListViewTwoState extends State {
  // final apiUrl = Uri.parse('https://jsonkeeper.com/b/YNRD');
  // final apiUrl = Uri.parse('https://jsonkeeper.com/b/T9K0');
  // final apiUrl = Uri.parse('https://jsonkeeper.com/b/D5LV');
  // final apiUrl = Uri.parse('https://jsonkeeper.com/b/KGLZ');
  final apiUrl = Uri.parse('https://jsonkeeper.com/b/AJIN');
  // final apiUrl = Uri.parse('https://jsonkeeper.com/b/ABAT');
  // final apiUrl = Uri.parse('https://jsonkeeper.com/b/T4P7');
  // final apiUrl = Uri.parse('https://jsonkeeper.com/b/3EVR');
  // final apiUrl = Uri.parse('https://jsonkeeper.com/b/6AVV');
  // final apiUrl = Uri.parse('https://jsonkeeper.com/b/UXRC');

  Future<List<Menu>> fetchJSONData() async {
    var jsonResponse = await GetApi().getData(apiUrl);

    //Todo handling response code, separate to function
    if (jsonResponse.statusCode == 200) {
      final jsonDecode = json.decode(jsonResponse.body);
      final jsonItems =
          jsonDecode['data']['menus'].cast<Map<String, dynamic>>();
      List<Menu> menu = jsonItems.map<Menu>((json) {
        return Menu.fromJson(json);
      }).toList();
      log("mapping ok");
      return menu;
    } else {
      throw Exception('Failed to load data from internet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Menu>>(
          future: fetchJSONData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              List<Menu>? menus = snapshot.data;
              return ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: menus!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpansionTile(
                      title: Text(menus[index].menuCaption.toString()),
                      children: <Widget>[
                        Column(
                          children: [
                            ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: menus[index].submenus!.length,
                                itemBuilder: (BuildContext context, int i) {
                                  // log('myMenu = ' + myMenu[index].title);
                                  // log('myMenu index = ' + index.toString());
                                  // log('menuItem index = ' + i.toString());
                                  return ListTile(
                                    title: Text(menus[index]
                                        .submenus![i]
                                        .menuCaption
                                        .toString()),
                                    // Todo: taruh ontap disini
                                  );
                                })
                          ],
                        )
                      ],
                    );
                  });
            }
          }),
    );
  }
}
