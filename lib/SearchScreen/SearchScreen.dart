import 'package:flutter/material.dart';
import '../constants.dart' as constants;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'utils.dart';
import 'package:gs_live/colors.dart' as colors;

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key, required this.type}) : super(key: key);

  final String type;

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String url = constants.BASE;
  List<String> _listItems = [];

  void getData() async {
    final resp = await http.get(Uri.parse(url));
    var jsonData = json.decode(resp.body);

    List<String> dataListFromBackend = [];
    for (var listItem in jsonData) {
      dataListFromBackend.add(
        listItem['name'] ?? "none",
      );
    }
    setState(() {
      _listItems = dataListFromBackend;
    });
  }

  @override
  void initState() {
    if (widget.type == "supplier") {
      url += constants.ALL_SUPPLIERS;
    } else if (widget.type == "medicine & product") {
      url += constants.ALL_ITEMS;
    }
    getData();
    super.initState();
  }

  void updateSuggestions(newval) async {
    String url = constants.BASE +
        (widget.type == 'supplier'
            ? "/suppliers/search?name=" + newval
            : "/items/search?name=" + newval);

    final resp = await http.get(Uri.parse(url));
    var jsonData = json.decode(resp.body);

    List<String> dataListFromBackend = [];
    for (var listItem in jsonData) {
      dataListFromBackend.add(
        listItem['name'] ?? "none",
      );
    }
    setState(() {
      _listItems = dataListFromBackend;
    });
  }

  @override
  Widget build(BuildContext context) {
    String type = widget.type;
    return Scaffold(
        backgroundColor: colors.BGCOLOR,
        appBar: AppBar(
          leading: const BackButton(color: Colors.white),
          backgroundColor: colors.BLUE,
        ),
        body: Column(
          children: [
            // Expanded(
            Container(
              // height: 55,
              width: 1000,
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  onChanged: (value) {
                    updateSuggestions(value);
                  },
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                    suffixIcon: const Icon(Icons.search),
                    hintText: "Search $type",
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 32.0),
                        borderRadius: BorderRadius.circular(25.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 32.0),
                        borderRadius: BorderRadius.circular(8.0)),
                    filled: true,
                    fillColor: Colors.white,
                  )),
            ),
            // ),
            Expanded(
              child: _listItems.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: _listItems.length,
                      itemBuilder: (context, index) {
                        final item = _listItems[index];
                        return Expanded(
                          child: Container(
                            height: 55,
                            width: 1500,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black26,
                              width: 1,
                            )),
                            child: Card(
                              margin: EdgeInsets.zero,
                              child: ListTile(
                                title: Text(item),
                                leading: const CircleAvatar(
                                  backgroundImage:
                                      AssetImage("image/Capsule.jpeg"),
                                ),
                                trailing:
                                    const Icon(Icons.keyboard_arrow_right),
                              ),
                              color: colors.BGCOLOR,
                            ),
                          ),
                        );
                      },
                    ),
            ),
            const SizedBox(height: 10),
            Container(
              child: buildButton(
                text: 'Add Item',
                onClicked: () => showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
                  context: context,
                  builder: (context) => buildSheet(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                height: 10,
                child: const Text("Still not found what you searched",
                    style: TextStyle(fontSize: 11)),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                margin: const EdgeInsets.all(1),
                child: RaisedButton(
                  child: const Text(
                    'Send request for Supplier',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  color: colors.BLUE,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ));
  }
}
