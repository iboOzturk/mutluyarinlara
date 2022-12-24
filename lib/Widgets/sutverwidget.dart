import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/theme_provider.dart';
class SutVerWidget extends StatelessWidget {
  const SutVerWidget({
    Key key,
    @required this.toplanansut,
    @required this.gerekensut,

  })  :super(key: key);
  final int toplanansut;
  final int gerekensut;

  @override
  Widget build(BuildContext context) {
    final color = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? Colors.black
        : Colors.black;
    double toplampuan=100;
    double genislik=MediaQuery.of(context).size.width;
    double uzunluk=MediaQuery.of(context).size.height;
    double _currentSliderValue=toplampuan;
    return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(width: genislik*0.95,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
            color: Color(0xfff2e8fe),
        ),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Container(margin: EdgeInsets.only(left: 15,right: 15,),

                      width: genislik*1.067,height: 135,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),
                          image: DecorationImage(image: AssetImage(
                              'assets/images/crop.jpg'
                          ),fit: BoxFit.cover,)
                      ),
                    ),
                  ),Container(
            margin: EdgeInsets.only(left: 15,right: 15,)
                    ,width: genislik*1.067,height: 35,
                    decoration: BoxDecoration(color: Color(0xff836df5),borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),
                    child: Center(child: Text('Son 72 gün',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700,color: Colors.white),)),
                  ),
                  SizedBox(height: 10,),
                  Container(width: genislik*1.067,height: 100,
                    child: Column(
                      children: [

                        Container(alignment: Alignment.centerLeft,child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text('İsim Soyisim',
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19,color: color),),
                        )),
                        SizedBox(height: 5,),
                        Container(alignment: Alignment.centerLeft,child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text('Toplanan $toplanansut Süt',textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,color: color),
                          ),
                        )),
                        SizedBox(height: 5,),
                        Container(alignment: Alignment.centerLeft,child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text('Gereken $gerekensut Süt',
                            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,color: color),),
                        )),
                        SizedBox(height: 5,),
                        Container(width: genislik*1.067,height: 15,

                          child: Row(
                          children: [
                            Flexible(flex: toplanansut,
                                child: Container(
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xffaa61fc),
                                            Color(0xff6d8ff5)
                                          ]
                                      ),
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),topLeft: Radius.circular(15))),
                                )
                            ),
                            Flexible(flex: gerekensut-toplanansut,
                                child: Container(
                                  margin: EdgeInsets.only(right: 15),
                                  decoration: BoxDecoration(color: Colors.white,
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),topRight: Radius.circular(15))),
                                )
                            )
                          ],
                        ),)
                      ],
                    ),),
                  SizedBox(height: 7,),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return  StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(backgroundColor: Colors.transparent,
                              content: Container(height: uzunluk/2,width: genislik,
                                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(flex: 6,
                                      child: Container(height: uzunluk/2,width: genislik,
                                        padding: const EdgeInsets.all(8.0),
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                          gradient: LinearGradient(
                                              colors: [
                                                Color(0xffaa61fc),
                                                Color(0xff6d8ff5)
                                              ]
                                          ),),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(margin: EdgeInsets.only(left: 5,top: 5),
                                              width: 100,height: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                                  image: DecorationImage(image: AssetImage(
                                                      'assets/images/crop.jpg'
                                                  ),fit: BoxFit.fill,)
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5)
                                              ,width: 100,height: 20,
                                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),
                                              child: Center(child: Text('Son 72 gün',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)),
                                            ),
                                            SizedBox(height: 10,),
                                            Column(
                                              children: [
                                                SizedBox(height: 5,),
                                                Slider(activeColor: Colors.white,
                                                  value: _currentSliderValue,
                                                  max: toplampuan<=0?0:toplampuan,
                                                  divisions: 4,
                                                  label: _currentSliderValue.toInt().toString(),
                                                  onChanged: (double value) {
                                                    setState(() {
                                                      _currentSliderValue = value;
                                                    });
                                                  },
                                                ),
                                                Text('Toplam Puanınız: $toplampuan',
                                                  style: TextStyle(fontSize: 13,color: Colors.white),),

                                              ],
                                            ),

                                          ],
                                        ),

                                      ),
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: GestureDetector(
                                          onTap: () {

                                            setState((){
                                              if(toplampuan>0){
                                                print('Aktarmadan önce $toplampuan');
                                                print('Aktardıktan sonra ${toplampuan - _currentSliderValue}');
                                                toplampuan=(toplampuan.toInt()-_currentSliderValue.toInt()).toDouble();
                                                _currentSliderValue=0;
                                              }
                                              else if(toplampuan==0){
                                                print('Para bitti');
                                              }

                                            });

                                          },
                                          child: Container(
                                            width: genislik,height: 45,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: toplampuan!=0?[
                                                      Color(0xff42fcdb),Color(0xff3ee577)
                                                    ]:[
                                                      //Color(0xffcaccd1),Color(0xfff3f4f7)
                                                      Color(0xffff0000),Color(0xff990000)
                                                    ]
                                                ),
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(15),
                                                    bottomRight: Radius.circular(15)
                                                )
                                            ),
                                            child: Center(child: Text('AKTAR',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                                          ),
                                        )
                                    )
                                  ],
                                ),
                              ),

                            );}
                      );
                    }
                );
              },
              child: Container(width: genislik*1.067,height: 45,decoration: BoxDecoration(
                    gradient: LinearGradient(
                         colors: [
                           Color(0xffaa61fc),
                           Color(0xff6d8ff5)
                        ]
                     ),
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
              )
              ),child: Center(child: Text('SütPuan Aktar',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 19),)),

              ),
            )
          ],
        ),
      ),
    );
  }
}
