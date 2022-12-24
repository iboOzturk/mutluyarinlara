import 'package:flutter/material.dart';
import '../Variables/global.dart' as global;
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget  {
  const AppBarWidget({
    Key key,
    @required this.Baslik,

    @required this.appBar,
    @required this.actionsWidget,
    @required this.backgroundColor,
    @required this.geritusuvisible,

  })  :super(key: key);
  final String Baslik;

  final AppBar appBar;
final bool actionsWidget;
final Color backgroundColor;
final bool geritusuvisible;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (context, setState) {
          return AppBar(
            leading : Visibility(
              visible: geritusuvisible,
              child: IconButton(onPressed: () {
                Navigator.pop(context);
              },icon: Icon(Icons.arrow_back),),
            ),
            centerTitle: true,
            backgroundColor: backgroundColor,
            actions: [Visibility(
              visible: actionsWidget,
              child: IconButton(onPressed: () {
                if(global.giriskontrol==1){
                  setState((){
                    global.giriskontrol=0;
                  });
                  setState((){
                    global.menuindex=0;
                  });
                  Navigator.pushNamed(context, '/');
                }
              }, icon: Icon(Icons.logout)),
            )
            ],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                )
            ),
            title: Text(Baslik, style: TextStyle(fontWeight: FontWeight.bold),),
            // backgroundColor:Color.fromARGB(255, 55, 0, 60 ) ,
          );
        });}

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
