import 'package:flutter/material.dart';
import '../Variables/global.dart' as global;
import 'package:google_sign_in/google_sign_in.dart';
class GirisPage extends StatefulWidget {
  @override
  _GirisPageState createState() => _GirisPageState();
}
final GoogleSignIn _googleSignIn=GoogleSignIn(
  scopes: [
    'email'
  ]
);
class _GirisPageState extends State<GirisPage> {
  GoogleSignInAccount _currentUser;
  @override
  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((account) {
      _currentUser=account;
    });
    _googleSignIn.signInSilently();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount user=_currentUser;

    double genislik=MediaQuery.of(context).size.width;
    double uzunluk=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: genislik,height: uzunluk,
        child: Stack(
          children: [
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(alignment: Alignment.topLeft,
                height: uzunluk/1.5,width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffa962fc),Color(0xff6d8ff5)
                    ]
                  )
                ),

              ),
            ),
            Positioned(
              left: genislik/18,right:genislik/18,top: uzunluk/6,
              child: Card(
                shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                  width: genislik/1.1,height: uzunluk/1.35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('LOGO',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Color(0xfff2e8fe),
                                width: 4.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Color(0xfff2e8fe),
                                width: 4.0,
                              ),
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.black),
                            fillColor: Colors.black,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(color: Color(0xfff2e8fe)),
                            ),
                            //fillColor: Colors.green
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8,bottom: 22),
                        child: TextFormField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Color(0xfff2e8fe),
                                width: 4.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Color(0xfff2e8fe),
                                width: 4.0,
                              ),
                            ),
                            labelText: "Şifre",
                            labelStyle: TextStyle(color: Colors.black),
                            fillColor: Colors.black,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(color: Color(0xfff2e8fe)),
                            ),
                            //fillColor: Colors.green
                          ),),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                              global.giriskontrol=1;
                          });
                          Navigator.pushNamed(context, '/menu');
                        },
                        child: Container(
                          width: genislik/2,height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff836df5),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text('GİRİŞ YAP',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0,top: 8),
                        child: Text('Şifrenizi mi unuttunuz?',style: TextStyle(color: Colors.grey.shade600),),
                      ),
                      Text('Bir Hesapınız yok mu?',style: TextStyle(color: Colors.grey.shade900),),
                      Text('Kayıt Ol',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(height: 16,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Container(width: genislik/20,height: 2,color: Colors.black,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Container(width: genislik/20,height: 2,color: Colors.black,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Container(width: genislik/20,height: 2,color: Colors.black,),
                          ),Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Container(width: genislik/20,height: 2,color: Colors.black,),
                          ),Text(' Ya Da ',style: TextStyle(color: Colors.grey.shade600),),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Container(width: genislik/20,height: 2,color: Colors.black,),
                          ),Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Container(width: genislik/20,height: 2,color: Colors.black,),
                          ),Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Container(width: genislik/20,height: 2,color: Colors.black,),
                          ),Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Container(width: genislik/20,height: 2,color: Colors.black,),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                        height: 45,width: genislik/2.3,
                          decoration:BoxDecoration(
                            color: Color(0xff4285f4),

                          ) ,
                          child: GestureDetector(
                            onTap: () async{
                             await _googleSignIn.signIn().then((value) {
                                print('User Id: '+user.id);
                              });

                            },
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(width: 40,height: 40,color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Image(
                                        image: AssetImage('assets/images/googlelogo.png'),
                                        height: 30,width: 30,fit: BoxFit.fill,),
                                    )
                                ),
                                Text('Sign in with Google',style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height - 70);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(MyCustomClipper oldClipper) => false;

}
