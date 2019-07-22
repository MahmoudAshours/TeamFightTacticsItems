import 'package:flutter/material.dart';
import 'package:tftitems/Models/subtitles.dart';
import 'package:tftitems/Utils/ShowUp.dart';
import 'package:tftitems/Models/titles.dart';

class DragBox extends StatefulWidget {
  final Offset position;
  final String label;
  final String assetImage;
  DragBox({this.label, this.position, this.assetImage});
  @override
  _DragBoxState createState() => _DragBoxState();
}

class _DragBoxState extends State<DragBox> {
  Offset initialPos = Offset(0, 0);
  String comingLabel;
  Titles titles = new Titles();
  SubTitles subTitles = new SubTitles();
  var caughtColor = Colors.red;
  @override
  void initState() {
    initialPos = widget.position;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: initialPos.dy,
      left: initialPos.dx,
      child: Draggable(
        data: widget.label,
        feedback: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.assetImage),
                colorFilter: ColorFilter.linearToSrgbGamma()),
          ),
        ),
        onDraggableCanceled: (velocity, offset) {
          setState(() {
            initialPos = offset;
          });
        },
        child: DragTarget(
          onAccept: (String label) {
            comingLabel = label;
          },
          builder: (BuildContext context, List<dynamic> accepted,
              List<dynamic> rejected) {
            return _returnImage();
          },
        ),
      ),
    );
  }

  Widget _returnImage() {
    if (comingLabel == 'tear' && widget.label == 'BFSword' ||
        comingLabel == 'BFSword' && widget.label == 'tear') {
      return returnedImage("assets/spearOfShojin.jpg", titles.spearOfShojin,
          subTitles.spearOfShojin);
    } else if (comingLabel == 'BFSword' && widget.label == 'BFSword') {
      return returnedImage(
          "assets/IE.jpg", titles.infinityEdge, subTitles.infinityEdge);
    } else if (comingLabel == 'largeRod' && widget.label == 'BFSword' ||
        comingLabel == 'BFSword' && widget.label == 'largeRod') {
      return returnedImage("assets/gunblade.png", titles.hextechGunblade,
          subTitles.hextechGunblade);
    } else if (comingLabel == 'chainVest' && widget.label == 'BFSword' ||
        comingLabel == 'BFSword' && widget.label == 'chainVest') {
      return returnedImage(
          "assets/GA.png", titles.guardianAngel, subTitles.guardianAngel);
    } else if (comingLabel == 'spatula' && widget.label == 'BFSword' ||
        comingLabel == 'BFSword' && widget.label == 'spatula') {
      return returnedImage(
          "assets/youmus.png", titles.youmuu, subTitles.youmuu);
    } else if (comingLabel == 'recurveBow' && widget.label == 'BFSword' ||
        comingLabel == 'BFSword' && widget.label == 'recurveBow') {
      return returnedImage("assets/swordOfDivine.png", titles.swordoftheDivine,
          subTitles.swordoftheDivine);
    } else if (comingLabel == 'negatron' && widget.label == 'BFSword' ||
        comingLabel == 'BFSword' && widget.label == 'negatron') {
      return returnedImage("assets/bloodthirster.jpg", titles.bloodthirster,
          subTitles.bloodthirster);
    } else if (comingLabel == 'giantBelt' && widget.label == 'BFSword' ||
        comingLabel == 'BFSword' && widget.label == 'giantBelt') {
      return returnedImage("assets/zeke.png", titles.zeke, subTitles.zeke);
    } else if (comingLabel == 'largeRod' && widget.label == 'chainVest' ||
        comingLabel == 'chainVest' && widget.label == 'largeRod') {
      return returnedImage(
          "assets/locket.png", titles.locket, subTitles.locket);
    } else if (comingLabel == 'recurveBow' && widget.label == 'chainVest' ||
        comingLabel == 'chainVest' && widget.label == 'recurveBow') {
      return returnedImage("assets/phantomDance.png", titles.phantomDancer,
          subTitles.phantomDancer);
    } else if (comingLabel == 'tear' && widget.label == 'chainVest' ||
        comingLabel == 'chainVest' && widget.label == 'tear') {
      return returnedImage(
          "assets/frozenheart.png", titles.frozenHeart, subTitles.frozenHeart);
    } else if (comingLabel == 'negatron' && widget.label == 'chainVest' ||
        comingLabel == 'chainVest' && widget.label == 'negatron') {
      return returnedImage("assets/swordBreaker.png", titles.swordBreaker,
          subTitles.swordBreaker);
    } else if (comingLabel == 'giantBelt' && widget.label == 'chainVest' ||
        comingLabel == 'chainVest' && widget.label == 'giantBelt') {
      return returnedImage(
          "assets/redBuff.png", titles.redBuff, subTitles.redBuff);
    } else if (comingLabel == 'spatula' && widget.label == 'chainVest' ||
        comingLabel == 'chainVest' && widget.label == 'spatula') {
      return returnedImage(
          "assets/vow.png", titles.knightVow, subTitles.knightVow);
    } else if (comingLabel == 'chainVest' && widget.label == 'chainVest') {
      return returnedImage(
          "assets/thornmail.png", titles.thornmail, subTitles.thornmail);
    } else if (comingLabel == 'giantBelt' && widget.label == 'giantBelt') {
      return returnedImage(
          "assets/warmogs.png", titles.warmogs, subTitles.warmogs);
    } else if (comingLabel == 'recurveBow' && widget.label == 'giantBelt' ||
        comingLabel == 'giantBelt' && widget.label == 'recurveBow') {
      return returnedImage(
          "assets/titanic.png", titles.titanicHydra, subTitles.titanicHydra);
    } else if (comingLabel == 'largeRod' && widget.label == 'giantBelt' ||
        comingLabel == 'giantBelt' && widget.label == 'largeRod') {
      return returnedImage("assets/morello.png", titles.morellonomicon,
          subTitles.morellonomicon);
    } else if (comingLabel == 'tear' && widget.label == 'giantBelt' ||
        comingLabel == 'giantBelt' && widget.label == 'tear') {
      return returnedImage(
          "assets/redemption.png", titles.redemption, subTitles.redemption);
    } else if (comingLabel == 'negatron' && widget.label == 'giantBelt' ||
        comingLabel == 'giantBelt' && widget.label == 'negatron') {
      return returnedImage(
          "assets/zephyr.png", titles.zephyr, subTitles.zephyr);
    } else if (comingLabel == 'spatula' && widget.label == 'giantBelt' ||
        comingLabel == 'giantBelt' && widget.label == 'spatula') {
      return returnedImage(
          "assets/mallet.png", titles.frozenMallet, subTitles.frozenMallet);
    } else if (comingLabel == 'largeRod' && widget.label == 'largeRod') {
      return returnedImage(
          "assets/rabadons.png", titles.rabadons, subTitles.rabadons);
    } else if (comingLabel == 'recurveBow' && widget.label == 'largeRod' ||
        comingLabel == 'largeRod' && widget.label == 'recurveBow') {
      return returnedImage(
          "assets/guinso.jpg", titles.guinso, subTitles.guinso);
    } else if (comingLabel == 'negatron' && widget.label == 'largeRod' ||
        comingLabel == 'largeRod' && widget.label == 'negatron') {
      return returnedImage(
          "assets/ionic.png", titles.ionicSpark, subTitles.ionicSpark);
    } else if (comingLabel == 'tear' && widget.label == 'largeRod' ||
        comingLabel == 'largeRod' && widget.label == 'tear') {
      return returnedImage(
          "assets/ludens.png", titles.ludens, subTitles.ludens);
    } else if (comingLabel == 'spatula' && widget.label == 'largeRod' ||
        comingLabel == 'largeRod' && widget.label == 'spatula') {
      return returnedImage("assets/yummi.png", titles.yumi, subTitles.yumi);
    } else if (comingLabel == 'tear' && widget.label == 'negatron' ||
        comingLabel == 'negatron' && widget.label == 'tear') {
      return returnedImage("assets/hush.png", titles.hush, subTitles.hush);
    } else if (comingLabel == 'recurveBow' && widget.label == 'negatron' ||
        comingLabel == 'negatron' && widget.label == 'recurveBow') {
      return returnedImage(
          "assets/cursed.png", titles.cursedBlade, subTitles.cursedBlade);
    } else if (comingLabel == 'spatula' && widget.label == 'negatron' ||
        comingLabel == 'negatron' && widget.label == 'spatula') {
      return returnedImage(
          "assets/runans.png", titles.runans, subTitles.runans);
    } else if (comingLabel == 'negatron' && widget.label == 'negatron') {
      return returnedImage(
          "assets/claw.jpg", titles.dragonsClaw, subTitles.dragonsClaw);
    } else if (comingLabel == 'recurveBow' && widget.label == 'recurveBow') {
      return returnedImage(
          "assets/rapidfire.png", titles.rapidFire, subTitles.rapidFire);
    } else if (comingLabel == 'tear' && widget.label == 'recurveBow' ||
        comingLabel == 'recurveBow' && widget.label == 'tear') {
      return returnedImage("assets/shiv.png", titles.shiv, subTitles.shiv);
    } else if (comingLabel == 'spatula' && widget.label == 'recurveBow' ||
        comingLabel == 'recurveBow' && widget.label == 'spatula') {
      return returnedImage("assets/bork.png", titles.botrk, subTitles.botrk);
    } else if (comingLabel == 'spatula' && widget.label == 'spatula') {
      return returnedImage(
          "assets/force.png", titles.forceOfNature, subTitles.forceOfNature);
    } else if (comingLabel == 'tear' && widget.label == 'spatula' ||
        comingLabel == 'spatula' && widget.label == 'tear') {
      return returnedImage(
          "assets/darkin.png", titles.darkin, subTitles.darkin);
    } else if (comingLabel == 'tear' && widget.label == 'tear') {
      return returnedImage(
          "assets/seraph.png", titles.seraph, subTitles.seraph);
    } else {
      return Center(
        child: Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.assetImage),
            ),
          ),
        ),
      );
    }
  }

  Widget returnedImage(String asset, String title, String subtitle) {
    return ShowUp(
      delay: 300,
      child: SizedBox(
        width: 200,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset(asset),
            radius: 19,
          ),
          title: Text(title),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}
