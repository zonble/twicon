import 'package:flutter/material.dart';
import 'package:twicon/twicon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Taiwan Icons',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(title: 'Taiwan Icons'),
      );
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
    var items = Item.all;
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Container(
            color: Colors.black26,
            child: Scrollbar(
              child: CustomScrollView(slivers: <Widget>[
                SliverPadding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 10, right: 10, bottom: 0),
                    sliver: SliverToBoxAdapter(
                        child: Text(
                      'This is the list of the icons contained in "twicon" package.',
                      style: Theme.of(context).textTheme.title,
                    ))),
                SliverPadding(
                    padding: const EdgeInsets.all(10),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                      delegate: SliverChildBuilderDelegate(
                          (context, index) =>
                              IconCard(item: items[index], index: index),
                          childCount: items.length),
                    ))
              ]),
            )));
  }
}

class IconCard extends StatelessWidget {
  const IconCard({Key key, @required this.item, @required this.index})
      : super(key: key);

  final Item item;
  final int index;

  @override
  Widget build(BuildContext context) => Card(
        child: InkWell(
          onTap: () => showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                    title: Text('${index + 1} - ${item.title}'),
                    contentPadding: const EdgeInsets.all(20),
                    children: <Widget>[
                      Container(
                        width: 240,
                        height: 240,
                        child: Icon(item.icon, size: 200, color: Colors.black),
                      ),
                      SizedBox(width: 10),
                      RaisedButton(
                        child: Text('Close'),
                        onPressed: () => Navigator.of(context).pop(),
                      )
                    ],
                  )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 140,
                height: 140,
                child: Icon(item.icon, size: 100, color: Colors.black),
              ),
              SizedBox(width: 10),
              Flexible(child: Text('${index + 1} - ${item.title}')),
            ],
          ),
        ),
      );
}

class Item {
  IconData icon;
  String title;

  Item(this.icon, this.title);

  static get all {
    return [
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
      Item(TaiwanIcons.yoichi_hatta_statue, 'Statue of Yoichi Hatta'),
      Item(TaiwanIcons.the_85_sky_tower, '85 Sky Tower'),
      Item(TaiwanIcons.formosa_boulevard_station, 'Formosa Boulevard Station'),
      Item(TaiwanIcons.dragon_and_tiger_pagoda, 'Dragon and Tiger Pagoda'),
      Item(TaiwanIcons.rosary_catholic_church, 'Rosary Catholic Church'),
      Item(TaiwanIcons.longteng_bridge, 'Longteng Bridge'),
      Item(TaiwanIcons.lanyang_museum, 'Lanyang Museum'),
      Item(TaiwanIcons.tamsui_lovers_bridge, 'Tamsui Lover\'s Bridge'),
      Item(TaiwanIcons.beitou_hotspring_museum, 'Beitou Hot Spring Museum'),
      Item(TaiwanIcons.tunghai_university, 'Tunghai University'),
      Item(TaiwanIcons.taichung_park, 'Taichung Park'),
      Item(TaiwanIcons.queens_head, 'Queen\'s Head'),
      Item(TaiwanIcons.national_taichung_theater, 'National Taichung Theater'),
      Item(TaiwanIcons.bagua_mountain_buddha, 'Buddha in Bagua Mountain'),
      Item(TaiwanIcons.fo_guang_shan_temple, 'Fo Guang Shan Temple'),
      Item(TaiwanIcons.vase_rock, 'Vase Rock'),
      Item(TaiwanIcons.tropic_of_cancer, 'Tropic of Cancer'),
      Item(TaiwanIcons.fuguijiao_lighthouse, 'Fuguijiao Lighthouse'),
      Item(TaiwanIcons.yuwengdao_lighthouse, 'Yuwengdao Lighthouse'),
      Item(TaiwanIcons.eluanbi_lighthouse, 'Eluanbi Lighthouse'),
      Item(TaiwanIcons.kano_statue, 'Statue of Kano'),
      Item(TaiwanIcons.ershawan_battery, 'Ershawan Battery'),
      Item(TaiwanIcons.chinese_bridge, 'Chinese Bridge'),
      Item(TaiwanIcons.balloon, 'Balloon'),
      Item(TaiwanIcons.taiwan_railways, 'Taiwan Railways'),
      Item(TaiwanIcons.taipei_mrt, 'Taipei MRT'),
      Item(TaiwanIcons.alishan_forest_railway, 'Alishan Forest Railway'),
      Item(TaiwanIcons.taiwan_high_speed_rail, 'Taiwan High Speed Rail'),
      Item(TaiwanIcons.maokong_gondola, 'Maokong Gondola'),
      Item(TaiwanIcons.youbike, 'YouBike'),
      Item(TaiwanIcons.yamis_fishing_boat, 'Yami\'s Fishing Boat'),
      Item(TaiwanIcons.dragon_boat, 'Dragon Boat'),
      Item(TaiwanIcons.lantern1, 'Lantern 1'),
      Item(TaiwanIcons.lantern2, 'Lantern 2'),
      Item(TaiwanIcons.sky_lantern, 'Sky Lantern'),
      Item(TaiwanIcons.taiwanese_bag, 'Taiwanese Bag'),
      Item(TaiwanIcons.postbox, 'Postbox'),
      Item(TaiwanIcons.inclined_postbox, 'Inclined Postbox'),
      Item(TaiwanIcons.jug, 'Jug'),
      Item(TaiwanIcons.tea_pot, 'Tea pot'),
      Item(TaiwanIcons.tapioca_milk_tea, 'Tapioca Milk Tea'),
      Item(TaiwanIcons.taiwan_beer, 'Taiwan Beer'),
      Item(TaiwanIcons.apple_cider, 'Apple Cider'),
      Item(TaiwanIcons.spring_couplets, 'Spring couplets'),
      Item(TaiwanIcons.fortune, 'Fortune'),
      Item(TaiwanIcons.electric_pot, 'Electric pot'),
      Item(TaiwanIcons.slipper, 'Slipper'),
      Item(TaiwanIcons.flying_fish, 'Flying fish'),
      Item(TaiwanIcons.asiatic_black_bear, 'Asiatic black bear'),
      Item(TaiwanIcons.trash, 'Trash'),
      Item(TaiwanIcons.recycling, 'Recycling'),
      Item(TaiwanIcons.turn_queue_box, 'Turn Queue Box'),
      Item(TaiwanIcons.bicycle_lane, 'Bicycle lane'),
      Item(TaiwanIcons.red_man, 'Red Man'),
      Item(TaiwanIcons.green_man, 'Green Man'),
      Item(TaiwanIcons.health_insurance, 'Health Insurance'),
      Item(TaiwanIcons.logo_pixnet, 'PIXNET'),
      Item(TaiwanIcons.logo_17_live, '17 Live'),
      Item(TaiwanIcons.logo_wemo, 'WeMo'),
      Item(TaiwanIcons.logo_dcard, 'Dcard'),
      Item(TaiwanIcons.logo_easy_card, 'Easy Card'),
      Item(TaiwanIcons.logo_ipass, 'iPASS'),
      Item(TaiwanIcons.logo_youbike, 'YouBike'),
      Item(TaiwanIcons.logo_luxgen, 'Luxgen'),
      Item(TaiwanIcons.logo_post, 'Post'),
      Item(TaiwanIcons.logo_taiwan_railways, 'Taiwan Railways'),
      Item(TaiwanIcons.logo_taipei_mrt, 'Taipei MRT'),
      Item(TaiwanIcons.logo_kaohsiung_mrt, 'Kaohsiung MRT'),
    ];
  }
}
