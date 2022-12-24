import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as slider;
import 'package:provider/provider.dart';
import '../Provider/theme_provider.dart';
class HastaKartWidget extends StatelessWidget {
  const HastaKartWidget({
    Key key,
    @required this.toplanansut,
    @required this.gerekensut,

  })  :super(key: key);
  final int toplanansut;
  final int gerekensut;

  @override
  Widget build(BuildContext context) {
    final color = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? Colors.grey.shade700
        : Colors.white;
    final backcolor = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? Colors.black45
        : Colors.grey.shade300;
    final isimsoyisimundercolor = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? Colors.grey.shade300
        : Colors.black26;
    double toplampuan=100;
    double genislik=MediaQuery.of(context).size.width;
    double uzunluk=MediaQuery.of(context).size.height;
    double _currentSliderValue=toplampuan;
    return Card(
      elevation: 6,shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15),
        topRight: Radius.circular(15),bottomRight: Radius.circular(15)
    ),),
      child: Container(width: genislik*0.97,height: 125,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15),
                topRight: Radius.circular(15),bottomRight: Radius.circular(15)
            ),
            color: color

        ),
        child: Container(alignment: Alignment.topLeft, height: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1.4,color: Colors.white),
          ),
          child: Row(
            children: [
              Expanded(flex: 5,
                child: GestureDetector(
                  onTap: () {
                    var data=[];
                    data.add(toplanansut);
                    data.add(gerekensut);
                    Navigator.pushNamed(context, '/detay',arguments: data);
                  },
                  child: Container( decoration: BoxDecoration(

                    color: backcolor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                  ),
                    child: Row(
                      children: [
                        Expanded(flex: 1,
                          child: Column(
                            children: [
                              Container(margin: EdgeInsets.only(left: 5,top: 5),
                                width: 90,height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                    image: DecorationImage(image: AssetImage(
                                        'assets/images/crop.jpg'
                                    ),fit: BoxFit.fill,)
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5)
                                ,width: 90,height: 20,
                                decoration: BoxDecoration(color: Color(0xff9670fa),borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),
                                child: Center(child: Text('Son 72 gün',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                              ),
                              SizedBox(height: 5,)
                            ],
                          ),
                        ),
                        Expanded(flex: 2,
                          child: Container(alignment: Alignment.topLeft,
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(alignment: Alignment.topLeft,child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 16,),
                                  child: Text('İsim Soyisim',textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                                  ),
                                )),
                             //   Container(color: Colors.black26,height: 2,margin: EdgeInsets.only(left: 5),),
                                Container(color: isimsoyisimundercolor,height: 2,margin: EdgeInsets.only(left: 5),),
                                SizedBox(height: 10,),
                                Container(alignment: Alignment.centerLeft,child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text('Toplanan: $toplanansut SütPuan',
                                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,
                                       ),),
                                )),
                                SizedBox(height: 5,),
                                Container(alignment: Alignment.centerLeft,child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text('Hedeflenen: $gerekensut SütPuan',
                                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,
                                    ),),
                                )),
                                SizedBox(height: 5,),
                                Container(height: 15,
                                  child: Row(
                                    children: [
                                      Flexible(flex: toplanansut,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 8),
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
                                            margin: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(color: Colors.white,
                                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),topRight: Radius.circular(15))),
                                          )
                                      )
                                    ],
                                  ),)
                              ],
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(flex: 1,child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return  StatefulBuilder(
                            builder: (context, setState) {
                              return AlertDialog(backgroundColor: Colors.transparent,
                                content: Container(height: 300,width: genislik,
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
                child: Container(margin: EdgeInsets.only(),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  gradient: LinearGradient(
                      colors: [
                        Color(0xffaa61fc),
                        Color(0xff6d8ff5)
                      ],begin: Alignment.bottomCenter,end: Alignment.topCenter
                  ),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage('assets/images/sut.png'),height: 90,width: 90,),
                    Text('AKTAR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
                ),
              ))

            ],
          ),
        ),
      ),
    );
  }
}



