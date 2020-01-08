import 'package:flutter/material.dart';
import 'package:twicon/twicon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taiwan Icons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Taiwan Icons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var items = [
      Item(TaiwanIcons.td_flag, 'Taiwan Democracy Flag'),
      Item(TaiwanIcons.roc_flag, 'R.O.C Flag'),
      Item(TaiwanIcons.taiwan_main_island, 'Taiwan Main Island'),
      Item(TaiwanIcons.penghu_islands, 'Penghu Islands'),
      Item(TaiwanIcons.kinmen_main_island, 'Kinmen Main Island'),
      Item(TaiwanIcons.green_island, 'Green Island'),
      Item(TaiwanIcons.lamay_island, 'Lamay Island'),
      Item(TaiwanIcons.gueishan_island, 'Gueishan Island'),
      Item(TaiwanIcons.orchid_island, 'Orchid Island'),
      Item(TaiwanIcons.grave_of_rokushisense, 'Grave of Rokushisense'),
      Item(TaiwanIcons.cks_memorial_hall, 'CKS Memorial Hall'),
      Item(TaiwanIcons.gate_of_cks_hall, 'Gate of CKS Hall'),
      Item(TaiwanIcons.president_office, 'Office of the president'),
      Item(TaiwanIcons.taipei101, 'Taipei 101'),
      Item(TaiwanIcons.national_palace_museum, 'National Palace Museum'),
      Item(TaiwanIcons.martyrs_shrine, 'Martyr\'s Shrine in Taipei'),
      Item(TaiwanIcons.longshan_temple, 'Longshan Temple'),
      Item(TaiwanIcons.sys_hall, 'Sun Yat-sen Memorial Hall'),
      Item(TaiwanIcons.confucius_temple, 'Confucius Temple'),
      Item(TaiwanIcons.xingtian_temple, 'Xingtian Temple'),
      Item(TaiwanIcons.national_taiwan_museum, 'National Taiwan Museum'),
      Item(TaiwanIcons.grand_hotel, 'Grand Hotel'),
      Item(TaiwanIcons.the_228_peace_memorial_park,
          'The 228 Peace Memorial Park'),
      Item(TaiwanIcons.fort_san_domingo, 'Fort San Domingo'),
      Item(TaiwanIcons.raohe_Street_night_market, 'Raohe Street Night Market'),
      Item(TaiwanIcons.red_house_theater, 'Red House Theater'),
      Item(TaiwanIcons.taipei_beimen, 'Taipei Beimen'),
      Item(TaiwanIcons.taipei_xiaonanmen, 'Taipei Xiaonanmen'),
      Item(TaiwanIcons.taipei_station, 'Taipei Station'),
      Item(TaiwanIcons.fort_zeelandia, 'Fort Zeelandia'),
      Item(TaiwanIcons.eternal_golden_castle, 'Eternal Golden Castle'),
      Item(TaiwanIcons.fort_provintia, 'Fort Provintia'),
    ];

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView.builder(
          itemBuilder: (context, index) {
            var item = items[index];
            return SafeArea(
              top: false,
              bottom: false,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Container(
                    width: 55,
                    height: 55,
                    child: Icon(
                      item.icon,
                      size: 32,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(item.title),
                ],
              ),
            );
          },
          itemCount: items.length),
    );
  }
}

class Item {
  IconData icon;
  String title;

  Item(this.icon, this.title);
}
