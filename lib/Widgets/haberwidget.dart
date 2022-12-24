import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/theme_provider.dart';
class HaberWidget extends StatelessWidget {
  const HaberWidget({
    Key key,
    @required this.HBaslik,
    @required this.HAciklama,

  })  :super(key: key);
  final String HBaslik;
  final String HAciklama;
  @override
  Widget build(BuildContext context) {
    final color = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? Colors.redAccent.shade400
        : Color(0xfff2e8fe);
    double genislik=MediaQuery.of(context).size.width;
    return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(width: genislik*0.94,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          color: color
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15,right: 15,top: 10),
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('assets/images/crop.jpg'),fit: BoxFit.cover
                  )
              ),
              child: Container(alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: [
                          Colors.black87,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                         stops: [0.10,0.5]
                    )
                ),
                child: ListTile(
                  title: Text(HBaslik,
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,),
                  ),
                ),
              ),
            ),
          /*  Stack(
              children: [
                Container(padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: Image(
                      image: AssetImage('assets/images/crop.jpg'),
                      height: 175,width: 300,fit: BoxFit.cover,)
                ),
                Positioned(
                    bottom: 10,left:genislik/4,
                    child: Text(HBaslik,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                )
              ],
            ),*/
            SizedBox(height: 10,),
            Text(HAciklama,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
