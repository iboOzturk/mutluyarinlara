import 'package:flutter/material.dart';
import '../Widgets/appbarwidget.dart';
import '../Variables/global.dart' as global;
import 'girispage.dart';
class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    double genislik=MediaQuery.of(context).size.width;
    double uzunluk=MediaQuery.of(context).size.height;
    return global.giriskontrol==0?
    Container(width: genislik,height: uzunluk,color: Colors.white,):
    Scaffold(
      appBar: AppBarWidget(
        Baslik: 'Profil',appBar: AppBar(),actionsWidget: true,backgroundColor: Colors.greenAccent,
      geritusuvisible: false,),
      body: Container(
        width: genislik,height: uzunluk,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 20),
              child: Container(
                width: genislik*0.95,height: 85,
                decoration: BoxDecoration(
                  color: Color(0xfff2e8fe),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'İbo Öztürk',
                          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
                        )
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'ozturk.ibo@outlook.com',
                            style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black),
                        )
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2,color: Color(0xfff2e8fe)
                    )
                ),
                child: Column(
                  children: [
                    Container(
                      width: genislik*0.95,height: 55,
                      decoration: BoxDecoration(
                          color: Color(0xfff2e8fe),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                      ),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              alignment: Alignment.center,
                              child: Text(
                                '0 SütPuan            ',
                                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),
                              )
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              alignment: Alignment.center,
                              child: Text(
                                ' Bana yardım etmek et!',
                                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black),
                              )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: genislik*0.95,height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))

                      ),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              alignment: Alignment.center,
                              child: Text(
                                'SütPuan Aktar',
                                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 20),
              child: Container(
                width: genislik*0.95,height: 85,
                decoration: BoxDecoration(
                    color: Color(0xfff2e8fe),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                            text: '',
                            style: TextStyle(color: Colors.black,fontSize: 24),
                            children: [
                              TextSpan(
                                text: '0 SütPuan ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)
                              ),
                              TextSpan(
                                  text: 'harcayarak süt bağışı yaptın ',style: TextStyle()
                              )
                            ]
                          )

                        )
                    ),

                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ayarlar');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: genislik/2,height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff836df5),
                      borderRadius: BorderRadius.circular(15)
                    ),
                  child: Center(child: Text('Ayarlar',style: TextStyle(color: Colors.white,fontSize: 25),)),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
