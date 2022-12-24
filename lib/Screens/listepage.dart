import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/theme_provider.dart';
import '../Widgets/appbarwidget.dart';
import '../Widgets/gorevlerwidget.dart';
import '../Variables/global.dart' as global;
import 'girispage.dart';

class ListePage extends StatefulWidget {
  @override
  _ListePageState createState() => _ListePageState();
}

class _ListePageState extends State<ListePage> {

  @override
  Widget build(BuildContext context) {
    ///Gorev tamamlandiginda sutlerin renginin degistigi alan icin temaya gore arkarenk secenegi
    ///ilki koyu tema icin ikincisi aydinlik tema icin
    final color = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? Colors.grey.shade300
        : Color(0xfff2e8fe);

    double genislik=MediaQuery.of(context).size.width;
    double uzunluk=MediaQuery.of(context).size.height;

    ///bir hesab ile giris yapmadiysa beyaz bir ekran gorur girmisse gorev ekranini gorebilir.
    return global.giriskontrol==0?
    Container(width: genislik,height: uzunluk,color: Colors.white,):
    Scaffold(
      appBar: AppBarWidget(
        Baslik: 'Görevler',appBar: AppBar(),actionsWidget: false,backgroundColor: Colors.orangeAccent,geritusuvisible: false,),
      body: SingleChildScrollView(
        child: Container( alignment: Alignment.center,
          decoration: BoxDecoration(
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 15,top: 7),
                  alignment: Alignment.centerLeft,
                  child: Text('Günlük Görevler',style: TextStyle(fontSize: 23),)
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: genislik*0.95,height: 95,
                  decoration: BoxDecoration(
                    //color: Color(0xfff2e8fe),
                    color: color,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ///Sut 1 foto
                      ShaderMask(
                            child: Image(
                              image: AssetImage("assets/images/sut.png"),
                            ),
                            shaderCallback: (Rect bounds){
                          return LinearGradient(
                            colors:global.sut1==1? [
                              Color(0xffa962fc),Color(0xff6d8ff5)
                            ]:[
                              Colors.white,Colors.white
                            ],
                          ).createShader(bounds);
                       },blendMode: BlendMode.srcATop,),
                      ///Sut 2 foto
                      ShaderMask(
                        child: Image(
                          image: AssetImage("assets/images/sut.png"),
                        ),
                        shaderCallback: (Rect bounds){
                          return LinearGradient(
                            colors:global.sut2==1? [
                              Color(0xffa962fc),Color(0xff6d8ff5)
                            ]:[
                              Colors.white,Colors.white
                            ],
                          ).createShader(bounds);
                        },blendMode: BlendMode.srcATop,),
                      ///Sut 3 foto
                      ShaderMask(
                        child: Image(
                          image: AssetImage("assets/images/sut.png"),
                        ),
                        shaderCallback: (Rect bounds){
                          return LinearGradient(
                            colors:global.sut3==1? [
                              Color(0xffa962fc),Color(0xff6d8ff5)
                            ]:[
                              Colors.white,Colors.white
                            ],
                          ).createShader(bounds);
                        },blendMode: BlendMode.srcATop,),
                      ///Sut 4 foto
                      ShaderMask(
                        child: Image(
                          image: AssetImage("assets/images/sut.png"),
                        ),
                        shaderCallback: (Rect bounds){
                          return LinearGradient(
                            colors:global.sut4==1? [
                              Color(0xffa962fc),Color(0xff6d8ff5)
                            ]:[
                              Colors.white,Colors.white
                            ],
                          ).createShader(bounds);
                        },blendMode: BlendMode.srcATop,),
                      ///Sut 5 foto
                      ShaderMask(
                        child: Image(
                          image: AssetImage("assets/images/sut.png"),
                        ),
                        shaderCallback: (Rect bounds){
                          return LinearGradient(
                            colors:global.sut5==1? [
                              Color(0xffa962fc),Color(0xff6d8ff5)
                            ]:[
                              Colors.white,Colors.white
                            ],
                          ).createShader(bounds);
                        },blendMode: BlendMode.srcATop,),
                      ///sut 6 foto
                      ShaderMask(
                        child: Image(
                          image: AssetImage("assets/images/sut.png"),
                        ),
                        shaderCallback: (Rect bounds){
                          return LinearGradient(
                            colors:global.sut6==1? [
                              Color(0xffa962fc),Color(0xff6d8ff5)
                            ]:[
                              Colors.white,Colors.white
                            ],
                          ).createShader(bounds);
                        },blendMode: BlendMode.srcATop,),
                      ///sut 7 foto
                      ShaderMask(
                        child: Image(
                          image: AssetImage("assets/images/sut.png"),
                        ),
                        shaderCallback: (Rect bounds){
                          return LinearGradient(
                            colors:global.sut7==1? [
                              Color(0xffa962fc),Color(0xff6d8ff5)
                            ]:[
                              Colors.white,Colors.white
                            ],
                          ).createShader(bounds);
                        },blendMode: BlendMode.srcATop,),
                      ///sut 8 foto
                      ShaderMask(
                        child: Image(
                          image: AssetImage("assets/images/sut.png"),
                        ),
                        shaderCallback: (Rect bounds){
                          return LinearGradient(
                            colors:global.sut8==1? [
                              Color(0xffa962fc),Color(0xff6d8ff5)
                            ]:[
                              Colors.white,Colors.white
                            ],
                          ).createShader(bounds);
                        },blendMode: BlendMode.srcATop,),
                    ],
                  ),
                ),
              ),
              ///1. gorev
              GorevWidget(gorevsayisi:global.gorev1,saat: '10:00',SutPuan: 1000,),
              ///2. gorev
              GorevWidget(gorevsayisi:global.gorev2 ,saat: '11:30',SutPuan: 1000,),
              ///3. gorev
              GorevWidget(gorevsayisi:global.gorev3 ,saat: '13:30',SutPuan: 1000,),
              ///4. gorev
              GorevWidget(gorevsayisi:global.gorev4 ,saat: '15:30',SutPuan: 1000,),
              ///5. gorev
              GorevWidget(gorevsayisi:global.gorev5 ,saat: '17:30',SutPuan: 1000,),
              ///6. gorev
              GorevWidget(gorevsayisi:global.gorev6 ,saat: '19:30',SutPuan: 1000,),
              ///7. gorev
              GorevWidget(gorevsayisi:global.gorev7 ,saat: '20:30',SutPuan: 1000,),
              ///8. gorev
              GorevWidget(gorevsayisi:global.gorev8 ,saat: '22:00',SutPuan: 1000,),
            ],
          ),
        ),
      ),
    );
  }
}
