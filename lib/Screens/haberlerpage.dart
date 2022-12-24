import 'package:flutter/material.dart';
import 'package:mutluyarinlara/Provider/theme_provider.dart';
import 'package:provider/provider.dart';
import '../Widgets/haberwidget.dart';
import '../Widgets/appbarwidget.dart';
class HaberlerPage extends StatefulWidget {
  @override
  _HaberlerPageState createState() => _HaberlerPageState();
}

class _HaberlerPageState extends State<HaberlerPage> {
  @override
  Widget build(BuildContext context) {
    final color = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? Colors.redAccent.shade700
        : Colors.redAccent.shade400;

    double genislik=MediaQuery.of(context).size.width;
    double uzunluk=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBarWidget(
        Baslik: 'Haberler',appBar: AppBar(),
        actionsWidget: false,backgroundColor: color,geritusuvisible: false,),
      body: SingleChildScrollView(
        child: Container(width: genislik,height: uzunluk,

          child: Column(
            children: [
              SizedBox(height: 10,),
              HaberWidget(HBaslik: 'Haber Başlığı',HAciklama: 'Haber Açıklaması',),
              SizedBox(height: 10,),
              HaberWidget(HBaslik: 'Haber Başlığı',HAciklama: 'Haber Açıklaması',),
            ],
          ),
        ),
      ),
    );
  }
}
