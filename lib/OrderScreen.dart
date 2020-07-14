import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'OrderBody.dart';
import 'Ordering.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'PickUpOrderSummary.dart';

class OrderScreen extends StatefulWidget {

  @override
  _OrderScreen createState() => _OrderScreen();
}

class _OrderScreen extends State<OrderScreen> with TickerProviderStateMixin {
  ScrollController _scrollController;
  TabController tabController;
  ItemScrollController _itemScrollController = ItemScrollController();
  List<Tab> tabList = List();
  List MenuList = List();
  ItemPositionsListener _itemPositionsListener = ItemPositionsListener.create();
  List<String> MenuWidgets = [
    'Chicken',
    'Platter',
    'Pastas',
    'Beverage',
    'Dessert'
  ];
  String message = "";

  @override
  void dispose() {
    tabController.dispose();
    _scrollController.dispose();
  }

  @override
  void initState() {
    _itemPositionsListener = ItemPositionsListener.create();
    _itemScrollController = ItemScrollController();
    _scrollController = ScrollController();
    MenuList.add('Chicken');
    MenuList.add('Platter');
    MenuList.add('Pastas');
    MenuList.add('Beverage');
    MenuList.add('Dessert');

    /*tabList.add(Tab(child: Text('Chicken', style: TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      color: Colors.black,))));
    tabList.add(Tab(child: Text('Platter', style: TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      color: Colors.black,))));
    tabList.add(Tab(child: Text('Pastas', style: TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      color: Colors.black,))));
    tabList.add(Tab(child: Text('Beverage', style: TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      color: Colors.black,))));
    tabList.add(Tab(child: Text('Dessert', style: TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      color: Colors.black,))));*/

    tabController = new TabController(vsync: this, length: tabList.length);

    super.initState();
  }

  bool selected = false;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    AppBar appBar;
    const double widgetHeight = 30;
    appBar = AppBar(backgroundColor: Colors.transparent, elevation: 0.0);
    final screenSizeWidth = MediaQuery.of(context).size.width;
    final screenSizeHeight = MediaQuery.of(context).size.height;

    return Container(
        color: Colors.white,
        child: Stack(children: <Widget>[
          Container(
              height: screenSizeHeight * 0.25,
              width: screenSizeWidth,
              decoration: new BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Rectangle.png'),
                    fit: BoxFit.cover),
              )),
          Scaffold(
              backgroundColor: Colors.transparent,
              appBar: appBar,
              body: Container(
                  padding: EdgeInsets.fromLTRB(
                      0,
                      screenSizeHeight * 0.22 - appBar.preferredSize.height,
                      0,
                      0),
                  child: Column(children: <Widget>[
                    Container(
                        width: screenSizeWidth,
                        child: Column(children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('TGIF',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 28)),
                                Row(children: <Widget>[
                                  Image.asset('assets/Star 7.png'),
                                  Text('Rating',
                                      style:
                                          TextStyle(fontFamily: 'Montserrat'))
                                ])
                              ]),
                          Row(children: <Widget>[
                            Text('American, Steaks, Burgers',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFFAFAFAF)))
                          ]),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        child: Row(children: <Widget>[
                                      Image.asset("assets/Peso.png"),
                                      Image.asset("assets/Peso.png"),
                                      Image.asset("assets/UnPeso.png"),
                                    ])),
                                    Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        child: Text('2.5km',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                fontWeight:
                                                    FontWeight.normal))),
                                    ImageIcon(
                                      AssetImage("assets/Destination.png"),
                                      color: Colors.red,
                                    ),
                                    Text('Bonifacio High Street',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal))
                                  ])),
                          Container(
                              width: screenSizeWidth,
                              height: screenSizeHeight * 0.1,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: MenuList.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedIndex = index;
                                          _itemScrollController.scrollTo(
                                              index: selectedIndex,
                                              duration: Duration(seconds: 1),
                                              curve: Curves.easeInOutCubic);
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: index == selectedIndex
                                                    ? BorderSide(
                                                        width: 5.0,
                                                        color:
                                                            Color(0xFFFFC166))
                                                    : BorderSide(
                                                        width: 5.0,
                                                        color: Colors.white))),
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 30, 20, 0),
                                            child: Text(MenuList[index],
                                                style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontWeight: FontWeight.w500,
                                                  color: index == selectedIndex
                                                      ? Colors.black
                                                      : Colors.black,
                                                ))),
                                      ),
                                    );
                                  })),
                          Stack(children: <Widget>[
                            Container(
                                width: screenSizeWidth,
                                 height: screenSizeHeight * .52,
                                child: ScrollablePositionedList.builder(
                                    itemCount: MenuList.length,
                                    itemPositionsListener:
                                        _itemPositionsListener,
                                    itemScrollController: _itemScrollController,
                                    itemBuilder: (context, index) {
                                      return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(MenuList[index],
                                                style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 22,
                                                  color: Color(0xFFE9A034),
                                                )),
                                            Food(),
                                            Food(),
                                            Food()
                                          ]);
                                    })),
                            Positioned.fill(
                              child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.95,
                                      height: MediaQuery.of(context).size.height *0.06,
                                      child: RaisedButton(
                                                    onPressed: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> PickUpSummary()));
                                                    },
                                                    color: Color(0xFFE9A034),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                15.0),
                                                        side: BorderSide(
                                                            color:
                                                                Color(0xFFFFB343))),
                                                    child: Text(
                                                      'View Orders',
                                                      style: TextStyle(
                                                          fontFamily: 'Montserrat',
                                                          fontSize: 20,
                                                          fontStyle: FontStyle.normal,
                                                          fontWeight: FontWeight.w500,
                                                          color: Colors.white),
                                                    ))
                                    )),
                            ),

                          ])
                          /***Container(width: screenSizeWidth,
                              child: TabBar(
                              isScrollable: true,
                              controller: tabController,
                              indicatorColor: Color(0xFFC166),
                              tabs: tabList,
                              )),
                              Container(width: screenSizeWidth,
                              height: screenSizeHeight*0.5,
                              child: TabBarView(controller: tabController,
                              children: <Widget>[Menu(context), Menu(context), Menu(context), Menu(context),Menu(context)]
                              ))***/
                        ]))
                  ])))
        ]));
  }

  void ScrollingTo(index) {
    _itemScrollController.scrollTo(
        index: index, duration: Duration(seconds: 1));
  }

  Widget Food() {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => Dialogs());
      },
      child: Container(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Umami Fried Chicken',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
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
              ],
            ),
          ],
        ),
      )),
    );
  }
}
