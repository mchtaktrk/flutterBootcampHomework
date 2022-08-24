import 'package:flutter/material.dart';
import 'package:odev3/renkler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Odev3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(title: 'Odev 3 - Tasarım Çalışması'),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}



class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {


    var ekranBilgisi =MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Width: $ekranGenisligi Height: $ekranYuksekligi");

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.black,
                onPressed: () {},
              ),
              const Spacer(),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Welcome!",style:
                  TextStyle(
                    color: altSatirTutar,
                    fontSize: 12,),
                  ),
                  Text("Test Seller",style:
                  TextStyle(
                    color: Colors.black,
                    fontSize: 17,),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      //------------------------------------------------------------------------------------
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //mainAxisAlignment: MainAxisAlignment.center, //ortalama
        //mainAxisSize: MainAxisSize.min, //sınır belirleme
        children: [
          /*Container(height: 100,width: 100,color: Colors.red,),
          Container(height: 100,width: 100,color: Colors.green,),
          Container(height: 100,width: 100,color: Colors.blue,),*/
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5,top: 10),
            child: Row(
              children: [
                Container(
                  height: ekranGenisligi/5,width: ekranGenisligi/2.2,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: turuncuKutu,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("1008",style:
                        TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,),
                        ),
                        Text("Order Pending",style:
                        TextStyle(
                          color: Colors.white,
                          fontSize: 15,),
                        ),
                      ],
                    ),
                  ),
                ),
                //--------------------
                const Spacer(),
                //-----------------------------------------------------------------------------------
                Container(
                  height: ekranGenisligi/5,width: ekranGenisligi/2.2,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: yesilKutu,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("2",style:
                        TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,),
                        ),
                        Text("Order Complated",style:
                        TextStyle(
                          color: Colors.white,
                          fontSize: 15,),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5,top: 10),
            child: Row(
              children: [
                Container(
                  height: ekranGenisligi/5,width: ekranGenisligi/2.2,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kirmiziKutu,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("150",style:
                        TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,),
                        ),
                        Text("Total Withdraw",style:
                        TextStyle(
                          color: Colors.white,
                          fontSize: 15,),
                        ),
                      ],
                    ),
                  ),
                ),
                //--------------------
                const Spacer(),
                //-----------------------------------------------------------------------------------
                Container(
                  height: ekranGenisligi/5,width: ekranGenisligi/2.2,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: maviKutu,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("97.5",style:
                        TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,),
                        ),
                        Text("Remaining Balance",style:
                        TextStyle(
                          color: Colors.white,
                          fontSize: 15,),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Image.asset("resimler/pizza.jpg")
          //---------------------------------grafik-----------------------------------------------------
          Padding(padding: const EdgeInsets.only(top: 30),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("resimler/grafik.jpg", scale: 0.01,),
              ],
            ),
          ),
          //-------------------------------alt satırlar -----------------------------------------------
          Padding(
            padding: const EdgeInsets.only(top: 30,right: 10,left: 10),
            child: Row(
              children: [
                Text("Recent Orders", style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: altMenuBaslik),
                ),
                const Spacer(),
                Column(
                  children: [
                    TextButton(
                      onPressed: () { print("tikla");},
                      child:
                      Text("See all >",style: TextStyle(color: yesilYazi,fontSize: 18),),
                    )
                  ],
                ),
              ],
            ),
          ),
          //---------------------------------------satır---------------------------------
          Padding(
            padding: const EdgeInsets.only(top: 30,right: 10,left: 10, bottom: 20),
            child: Row(
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order ID: 1361",style:
                    TextStyle(
                      color: yesilYazi,
                      fontSize: 15,),
                    ),
                    Text("test",style:
                    TextStyle(
                      color: altSatirTutar,
                      fontSize: 20,),
                    ),
                  ],
                ),

                const Spacer(),
                Column(
                  children: [
                    Text("\$150.87",style:
                    TextStyle(
                      color: altSatirTutar,
                      fontSize: 20,),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //-----------------------------------------------------------------------------
          const Divider(
            height: 20,
            thickness: 3,
            indent: 20,
            endIndent: 20,
            color: seperatorColor,
          ),
          //-----------------------------------------------------------------------------
          //---------------------------------------satır---------------------------------
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10,left: 10, bottom: 20),
            child: Row(
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order ID: 1360",style:
                    TextStyle(
                      color: yesilYazi,
                      fontSize: 15,),
                    ),
                    Text("Test Buyer",style:
                    TextStyle(
                      color: altSatirTutar,
                      fontSize: 20,),
                    ),
                  ],
                ),

                const Spacer(),
                Column(
                  children: [
                    Text("\$42.00",style:
                    TextStyle(
                      color: altSatirTutar,
                      fontSize: 20,),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //-----------------------------------------------------------------------------
          const Divider(
            height: 20,
            thickness: 3,
            indent: 20,
            endIndent: 20,
            color: seperatorColor,
          ),
          //-----------------------------------------------------------------------------
          //---------------------------------------satır---------------------------------
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10,left: 10, bottom: 20),
            child: Row(
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order ID: 1359",style:
                    TextStyle(
                      color: yesilYazi,
                      fontSize: 15,),
                    ),
                    Text("Test Buyer",style:
                    TextStyle(
                      color: altSatirTutar,
                      fontSize: 20,),
                    ),
                  ],
                ),

                const Spacer(),
                Column(
                  children: [
                    Text("\$47.25",style:
                    TextStyle(
                      color: altSatirTutar,
                      fontSize: 20,),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //-----------------------------------------------------------------------------

          ],
      ),
    );
  }
}

class Box extends StatelessWidget {

  String ustSatir,altSatir,renk;
  Box({required this.altSatir,required this.ustSatir,required this.renk});
  @override
  Widget build(BuildContext context) {
    return Container( height: 100,width: 100,color: Colors.red,
      child: Column(
        children: [
          Text(ustSatir),
          Text(altSatir),
        ],
      ),
    );

    /*TextButton(
      onPressed: () { print("tikla");},
      child: Text(icerik,style: TextStyle(color: anaRenk),),
      style: TextButton.styleFrom(
          backgroundColor: anaRenk,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );*/
  }
}