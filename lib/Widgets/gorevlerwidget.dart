import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/theme_provider.dart';
import '../Variables/global.dart' as global;
class GorevWidget extends StatelessWidget {
  const GorevWidget({
    Key key,
    @required this.gorevsayisi,
    @required this.saat,
    @required this.SutPuan,
  })  :super(key: key);
  ///gorev widgeti icin parametreler
  final int gorevsayisi;
  final String saat;
  final int SutPuan;
  @override
  Widget build(BuildContext context) {
    ///gorev widget icin temaya gore arkarenk
    final color = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? Colors.grey.shade800
        : Colors.white;

    int durum=gorevsayisi;
    double toplampuan=100;
    double genislik=MediaQuery.of(context).size.width;
    double uzunluk=MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child:
          ///Gorev widgetinin disindaki cizgi
          Container(
            width: genislik/1.067+5,
            height: 105,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xffa962fc),Color(0xff6d8ff5)
                    ])),
            ///gorev widgetinin ici
            child: Container(
              width: genislik/1.067,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: color
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        decoration: BoxDecoration(
                        color: color,
                             borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(15),
                                 bottomLeft: Radius.circular(15)
                             )
                          ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 10,top: 5),
                                alignment: Alignment.centerLeft,
                                child: Text(saat,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 10,top: 5),
                                alignment: Alignment.centerLeft,
                                child: Text('Bir Bebeğe umut olmak için biberona tıkla!',
                                    style: TextStyle(fontSize: 14,),)
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 10,top: 5),
                                alignment: Alignment.centerLeft,
                                child: Text('$SutPuan SütPuan Kazan!',
                                  style: TextStyle(fontSize: 14,),)
                            ),
                          ],
                        ),
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: StatefulBuilder(
                          builder: (context, setState) {
                            return GestureDetector(
                          onTap: () {
                            ///durum 2'de goreve daha zaman var. 1'de gorev yapilmaya hazir. 0'da gorev yapilmis
                            ///durum gorev yapilmamissa ve
                            if(durum!=0&&durum!=2){
                              if(global.yapilangorev==0 &&global.yapilangorev!= null){
                                setState((){
                                  global.sut1=1;
                                  global.yapilangorev++;
                                  global.gorev1=0;
                                  durum=0;
                                });
                              }
                             else if(global.yapilangorev==1 &&global.yapilangorev!= null){
                                setState((){
                                  global.sut2=1;
                                  global.yapilangorev++;
                                  global.gorev2=0;
                                  durum=0;
                                });
                              }
                              else  if(global.yapilangorev==2 &&global.yapilangorev!= null){
                                setState((){
                                  global.sut3=1;
                                  global.yapilangorev++;
                                  global.gorev3=0;
                                  durum=0;
                                });
                              }
                              else if(global.yapilangorev==3 &&global.yapilangorev!= null){
                                setState((){
                                  global.sut4=1;
                                  global.yapilangorev++;
                                  global.gorev4=0;
                                  durum=0;
                                });
                              }
                              else if(global.yapilangorev==4 &&global.yapilangorev!= null){
                                setState((){
                                  global.sut5=1;
                                  global.yapilangorev++;
                                  global.gorev5=0;
                                  durum=0;
                                });
                              }
                              else if(global.yapilangorev==5 &&global.yapilangorev!= null){
                                setState((){
                                  global.sut6=1;
                                  durum=0;
                                  global.yapilangorev++;
                                  global.gorev6=0;
                                });
                              }
                              else  if(global.yapilangorev==6 &&global.yapilangorev!= null){
                                setState((){
                                  global.sut7=1;
                                  global.yapilangorev++;
                                  global.gorev7=0;
                                  durum=0;
                                });
                              }
                              else  if(global.yapilangorev==7 &&global.yapilangorev!= null){
                                setState((){
                                  global.sut8=1;
                                  global.gorev8=0;
                                  durum=0;
                                });
                              }
                            }
                          },
                          child: Container(height: 100,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffa962fc),Color(0xff6d8ff5)
                                  ]
                                ),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15)
                                )
                            ),
                            child:
                            durum==2?
                            Center(child: Text('Kalan Süre 07:37',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),))
                                : durum==1?Image(image: AssetImage('assets/images/sut.png'),)
                                :Icon(Icons.check,color: Colors.white,size: 55,) ,
                          ),
                        );
                      }
                  ),
                  )],
              ),
            ),
          ),
      ),
    );
  }
}
