import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../Screens/profilpage.dart';
import 'haberlerpage.dart';
import 'homepage.dart';
import 'listepage.dart';
import '../Variables/global.dart' as global;
class MenuPage2 extends StatefulWidget {
  @override
  _MenuPage2State createState() => _MenuPage2State();
}

class _MenuPage2State extends State<MenuPage2> {

int selectedIndex=0;
  ///BottomBar'daki butonlara tiklandığinda gösterilecek ekranlar.
  List<Widget> _widgetOptions=<Widget>[
    HomePage(),
    ListePage(),
    HaberlerPage(),
    ProfilPage(),
  ];

  ///Bottombar'daki butonlara tıklandığında 1. ve 3. indekse ait olan gorevler ve profil sayfasi giris yapmadan gosterilmeyecektir
///diger sayfalar gosterilmesi icin olan fonksiyondur
  void _onItemTap(int index){
    setState(() {
    global.menuindex=index;
    });
    if(index==1||index==3){
      if(global.giriskontrol==0){
        Navigator.pushNamed(context, '/giris');
      }
      else{
        setState(() {
          //_currentIndex=index;
          global.menuindex=index;
          ///hangi indexte olduğunu global değere aktar.
        });
      }
    }
    else{
      setState(() {
        //_currentIndex=index;
        global.menuindex=index;
      });
    }

  }
int _currentIndex=0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      ///Ekranin govdesinde gozukecek olan ekrani globaldeki degisken olan menuindex parametresi ile belirlenir
        body: _widgetOptions.elementAt(global.menuindex  ),

        ///Altta gozuken menu butonlarının tasarımı
        bottomNavigationBar: SalomonBottomBar(
          //currentIndex: _currentIndex,
          currentIndex: global.menuindex,
          //onTap: (i) => setState(() => _currentIndex = i),
          onTap: (index) {
            _onItemTap(index);
          },
          items: [
            /// Anasayfa
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Ana Sayfa"),
              selectedColor: Color(0xff836df5),
            ),

            /// Gorevler
            SalomonBottomBarItem(
              icon: Icon(Icons.list),
              title: Text("Görevler"),
              selectedColor: Colors.orangeAccent,
            ),

            /// Haberler
            SalomonBottomBarItem(
              icon: Icon(Icons.fiber_new_sharp),
              title: Text("Haberler"),
              selectedColor: Colors.redAccent,
            ),

            ///Profil
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profil"),
              selectedColor: Colors.greenAccent,
            ),


          ],
        ),
    );
  }
}

/*
 bottomNavigationBar: CustomBottomNavigationBar(
        items: [
          CustomBottomNavigationBarItem(
            icon: Icons.home,
            title: "Ana Sayfa",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.list_alt_rounded,
            title: "Görevler",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.settings,
            title: "Ayarlar",
          ),

        ],
        //onTap: _onItemTap,
        onTap: (index){
          _pageController.animateToPage(index,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 600));
        },
      )
 */


/*
BottomNavigationBar(type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),title: Text('Ana Sayfa'),activeIcon: Icon(Icons.remove_red_eye)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),title: Text('Baska Sayfa')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),title: Text('Diger Sayfa')
          )
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTap,
      ),
 */
