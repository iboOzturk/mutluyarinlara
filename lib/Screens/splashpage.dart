import 'dart:async';


import 'package:flutter/material.dart';
import 'package:mutluyarinlara/Screens/girispage.dart';
import 'package:mutluyarinlara/Services/api_service.dart';

import '../../Variables/global.dart' as global;


class GesisEkranPage extends StatefulWidget {
  @override
  _GesisEkranPageState createState() => _GesisEkranPageState();
}
bool checkNetwork;

class _GesisEkranPageState extends State<GesisEkranPage> {

  void waitLogin() async{
    await getId().whenComplete(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>GirisPage()));
    });

  }
  @override
  void initState() {
    waitLogin();
    // getId();
    // Timer(Duration(seconds: 4),(){
    //
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>GirisPage()));
    //
    //   //Navigator.push(context, MaterialPageRoute(builder: (context)=>DenemeHomePage2()));
    // });


    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container (width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: Text('Mutlu Yarınlara...')
        ),
      ),
    );
  }
  // checkNetConnectivity() async{
  //   var result=await Connectivity().checkConnectivity();
  //   if(result==ConnectivityResult.none){
  //     checkNetwork=false;
  //     _showDialog('Bağlantı Hatası', 'Lütfen internet bağlantınızı kontrol ediniz');
  //   }
  //   else if(result==ConnectivityResult.wifi){
  //     checkNetwork=true;
  //     _showDialog('wifi', 'wifi bağlı');
  //   }
  //   else if(result==ConnectivityResult.mobile){
  //     checkNetwork=true;
  //
  //     _showDialog('mobil veri', 'mobil veri bağlı');
  //   }
  // }
  // _showDialog(title,text){
  //   showDialog(context: context, builder: (BuildContext context){
  //     return AlertDialog(content: Text(text),title: Text(title),);
  //   });
  // }
}
