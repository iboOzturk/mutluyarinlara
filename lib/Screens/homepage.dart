import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../Widgets/hastakartwidget.dart';
import '../Widgets/sutverwidget.dart';
import '../main.dart';
import 'package:http/http.dart' as http;


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String url='https://ibo.icfkweb.com/API/';

  @override
  Widget build(BuildContext context) {
    ///Cihazin boyutlarini alan iki degisken tanimlanmistir.
    double genislik=MediaQuery.of(context).size.width;
    double uzunluk=MediaQuery.of(context).size.height;
    Future deneme() async{
      print('object');
      var data=await http.get(Uri.parse(url+'Deneme'),
      );
      print(data.body);
    }
    return Scaffold(
      appBar: AppBar(
        ///Ekrandaki ust Bar'da solda olan bolgeye varsayilan geridon ikonu gelmemesi icin yapilmistir.
        leading: Icon(Icons.check,color: Colors.transparent,),
        ///Basligin ortada olmasi ve bar'in arka rengi ayarlanmistir.
        centerTitle: true,backgroundColor: Color(0xff836df5),
        ///AppBar'in kenarlarini yumusatmak icin.
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25)
          )
        ),
        ///AppBar'in basligi ve yazinin kalinligi.
        title: Text('Anasayfa',style: TextStyle(fontWeight: FontWeight.bold),),


      ),
      ///SingleChildScrollView ekranin asagi dogru kaydirilabilmesi icin
      body: SingleChildScrollView(
        physics: PageScrollPhysics(),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () async{
                      await deneme();
              }, child: Text('bas')),
              SizedBox(height: 10,),
              ///Ara textbox'i
              Padding(
              padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Color(0xff2a76e6),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Color(0xff2a76e6),
                      width: 2.0,
                      ),
                    ),
                  labelText: "Ara",prefixIcon:   Icon(Icons.search),
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(color: Color(0xff2a76e6)),
                    ),
                //fillColor: Colors.green
                  ),
                ),
              ),
              SizedBox(height: 10,),
              HastaKartWidget(toplanansut: 69914441, gerekensut: 100000000,),
              SizedBox(height: 10,),
              HastaKartWidget(toplanansut: 35045123, gerekensut: 80000000,),
              SizedBox(height: 10,),
              HastaKartWidget(toplanansut: 12358641, gerekensut: 60000000,),

              SizedBox(height: 120,),
            ],
          ),
        ),
      ),
    );
  }
}
