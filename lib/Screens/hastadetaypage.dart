import 'package:flutter/material.dart';
import '../Widgets/appbarwidget.dart';
import '../Widgets/sutverwidget.dart';
class HastaDetayPage extends StatefulWidget  {
  @override
  _HastaDetayPageState createState() => _HastaDetayPageState();
}

class _HastaDetayPageState extends State<HastaDetayPage> {
  int toplanansut;
  int gerekensut;
  @override
  Widget build(BuildContext context) {
    double genislik=MediaQuery.of(context).size.width;
    double uzunluk=MediaQuery.of(context).size.height;

    var data=[];
    data=ModalRoute.of(context).settings.arguments;
    toplanansut=data[0];
    gerekensut=data[1];
    return Scaffold(
      appBar: new AppBarWidget(
        Baslik: 'Hasta Detay',appBar: AppBar(),backgroundColor: Color(0xff836df5),actionsWidget: false,geritusuvisible: true,),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 10,),
              SutVerWidget(toplanansut: toplanansut, gerekensut: gerekensut),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                width: genislik,
                child: Text('Hakkımda',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.only(left: 20,right: 15,top: 10),
                width: genislik,
                child: Text('Çocuk hakkında bilgiler',style: TextStyle(fontSize: 22),),
              ),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15,top: 20),
                width: genislik,
                child: Text('IBAN: ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15,top: 5),
                width: genislik,
                child: Text('IBAN 2: ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15,top: 5),
                width: genislik,
                child: Text('Ad Soyad',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15,top: 5),
                width: genislik,
                child: Text('Açıklama: ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
