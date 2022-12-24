import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Screens/girispage.dart';
import 'Provider/theme_provider.dart';
import 'Screens/ayarlarpage.dart';
import 'Screens/hastadetaypage.dart';
import 'Screens/listepage.dart';
import 'Screens/menupage.dart';
import 'Screens/splashpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);

      return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          ///Uygulama başladığında '/' işaretine karşılık olan sayfaya gidecektir.
          initialRoute: '/',
          routes: {
           // '/':(context)=>MenuPage2(),
            '/':(context)=>GesisEkranPage(),
            '/menu':(context)=>MenuPage2(),
            '/liste':(context)=>ListePage(),
            '/ayarlar':(context)=>AyarlarPage(),
            '/detay':(context)=>HastaDetayPage(),
            '/giris':(context)=>GirisPage(),
          }
      );
    },
  );

}



