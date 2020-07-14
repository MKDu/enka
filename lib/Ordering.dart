import 'package:flutter/material.dart';

class user {
  static bool chosen = false;
  static bool ordered = false;
}

class Dialogs extends StatefulWidget {
  @override
  _Dialogs createState() => _Dialogs();
}

class _Dialogs extends State<Dialogs>{
  List Spice = ['Chemical', 'Safe', 'Medium'];
  List Drinks = ['Pepsi', 'Iced Tea', 'Sprite'];
@override
  Widget build(BuildContext context) {
    // TODO: implement build

  return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: Text('Umami Fried Chicken',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              color: Colors.black)),
      content: Container(
        height: 1000,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
                  Expanded(
                      flex: 3,
                      child: Container(
                          child: Text(
                              ' 2 pcs of chicken with desired choice of spice level',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 11,
                                  color: Color(0xFFAFAFAF)),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4))),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/Peso.png"),
                          Text('249.00',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600)),
                        ],
                      )),
                ]),
                SizedBox(height: 20),
                Container(
                    child: Text('Choose Spice Level',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500))),
                Container(
                  height: 60 * (Spice.length).toDouble(),
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: ListView.builder(
                      itemCount: Spice.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          title: Text(Spice[index]),
                          value: user.chosen,
                          onChanged: (bool chosen) {
                            setState(() {
                              user.chosen = !user.chosen;
                            });
                          },
                        );
                      }),
                ),
                Row(
                  children: <Widget>[
                    Text('Drinks',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500)),
                    Spacer(),
                    Text('Optional',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Color(0xFFAFAFAF)))
                  ],
                ),
                Container(
                  height: 60 * Drinks.length.toDouble(),
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: ListView.builder(
                      itemCount: Spice.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          title: Text(Drinks[index]),
                          value: user.chosen,
                          onChanged: (bool chosen) {
                            setState(() {
                              user.chosen = chosen;
                            });
                          },
                        );
                      }),
                ),
                Row(
                  children: <Widget>[
                    Text('Special Requests'),
                    Spacer(),
                    Text('Optional',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFAFAFAF)))
                  ],
                ),
                SizedBox(height: 20),
                Container(
                    height: 200,
                    child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Additional Notes',
                        ),
                        style: TextStyle(fontSize: 14, height: 2))),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      ListTileItem(),
                    ])
              ]),
        ),
      ),
      actions: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width * 0.50,
            child: RaisedButton(
                onPressed: () {
                  user.ordered = !user.ordered;
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                },
                child: Text('Add Order',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        color: Colors.white))))
      ],
      elevation: 24.0,
    );
  }

}

class ListTileItem extends StatefulWidget {
  String title;

  ListTileItem({this.title});

  @override
  _ListTileItemState createState() => new _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.remove),
              onPressed: () => setState(() => _itemCount--),
              color: Color(0xFFE9A034)),
          new Text(_itemCount.toString()),
          new IconButton(
              icon: new Icon(Icons.add, color: Color(0xFFE9A034)),
              onPressed: () => setState(
                    () => _itemCount++,
                  )),
        ],
      ),
    );
  }
}
