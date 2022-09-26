import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/great_place.dart';

class PlaceListScreen extends StatelessWidget {
  const PlaceListScreen({Key key}) : super(key: key);
  static const routename = './places_list';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Your place'), actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/add-place');
              },
              icon: Icon(Icons.add))
        ]),
        body: FutureBuilder(
          // future: Provider.of<Great_Place>(context).fetchaset(),
          builder: (context, snapshot) => snapshot.connectionState ==
                  ConnectionState.waiting
              ? CircularProgressIndicator()
              : Consumer<Great_Place>(
                  builder: (context, great_items, child) => ListView.builder(
                    itemCount: great_items.items.length,
                    itemBuilder: (context, i) => great_items.items.length <= 0
                        ? child
                        : ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  FileImage(great_items.items[i].image),
                            ),
                            title: Text(great_items.items[i].title),
                            onTap: () {},
                          ),
                  ),
                ),
        ));
  }
}
