import 'package:flutter/material.dart';
import 'package:tftitems/Components/dragbox.dart';

class ItemGuideActivity extends StatefulWidget {
  @override
  _ItemGuideActivityState createState() => _ItemGuideActivityState();
}

class _ItemGuideActivityState extends State<ItemGuideActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DragBox(
            position: Offset(0.0, 50.0),
            assetImage: "assets/tear.png",
            label: 'tear',
          ),
          DragBox(
            position: Offset(50.0, 50.0),
            assetImage: "assets/BFSword.png",
            label: 'BFSword',
          ),
          DragBox(
            position: Offset(100.0, 50.0),
            assetImage: "assets/largrod.png",
            label: 'largeRod',
          ),
          DragBox(
            position: Offset(100.0, 50.0),
            assetImage: "assets/bow.png",
            label: 'recurveBow',
          ),
          DragBox(
            position: Offset(60, 100.0),
            assetImage: "assets/health.PNG",
            label: 'giantBelt',
          ),
          DragBox(
            position: Offset(20.0, 40.0),
            assetImage: "assets/spatula.PNG",
            label: 'spatula',
          ),
          DragBox(
            position: Offset(150.0, 100.0),
            assetImage: "assets/cloak.png",
            label: 'negatron',
          ),
          DragBox(
            position: Offset(100.0, 150.0),
            assetImage: "assets/chainvest.png",
            label: 'chainVest',
          ),
        ],
      ),
    );
  }
}
