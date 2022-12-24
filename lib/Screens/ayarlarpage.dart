import 'dart:io';

import 'package:flutter/material.dart';
import '../Widgets/appbarwidget.dart';
import '../Variables/global.dart' as global;
import '../Widgets/theme_change_button_widget.dart';
class AyarlarPage extends StatefulWidget {
  @override
  _AyarlarPageState createState() => _AyarlarPageState();
}

class _AyarlarPageState extends State<AyarlarPage> {
  @override
  Widget build(BuildContext context) {
    double genislik=MediaQuery.of(context).size.width;
    double uzunluk=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBarWidget(
        Baslik: 'Ayarlar',appBar: AppBar(),
        actionsWidget: false,
        geritusuvisible: true,
        backgroundColor: Colors.pinkAccent,),
      body: Container( alignment: Alignment.center,
        width: genislik,height: uzunluk,

        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Web sitesini ziyaret et',style: TextStyle(fontSize: 20),),
            SizedBox(height: 15,),

            Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Temayı değiştir:',style: TextStyle(fontSize: 20)),
            ChangeThemeButtonWidget(),
          ],
        ),
            SizedBox(height: 15,),
            Text('Version: 1.0.0',style: TextStyle(fontSize: 20)),
            SizedBox(height: 20,),
            Text('Gelistirici: BulutByte',style: TextStyle(fontSize: 20)),


            SizedBox(height: 100,),

          ],
        ),
      ),
    );
  }
}
