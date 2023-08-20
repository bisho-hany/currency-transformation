import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Coins",home: login(),);
  }
}


class login extends StatelessWidget{
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:

    AppBar(title: Icon(Icons.currency_bitcoin_sharp,size: 30,color: Colors.limeAccent,),backgroundColor: Colors.black,),



      body:ListView(children: [

        Center(child:Column(children: [
          Text("put your value",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

          ,SizedBox(width: 150,height: 50,child: TextField(controller: t1,
          decoration: InputDecoration(
            border: OutlineInputBorder()
          ),
          ),)

,Divider(),
          Text("Type of money",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

,SizedBox(width: 150,height: 50,child: TextField(controller: t2,

          decoration: InputDecoration(
            hintText: "L.E , USD ,Euro"
                ,border: OutlineInputBorder()
          ),

          ),
          )


, RaisedButton(child: Text("Convert"),color: Colors.limeAccent,
              onPressed:(){
  int a = int.parse(t1.text);
  String b = (t2.text);
  double c =double.parse((a/18).toString());
  double x = double.parse((a*0.050).toString());




if (b=="l.e"||b=="L.e"||b=="le"||b=="Le") {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("the value by USD is${c}"),
      action: SnackBarAction(label: "To Euro",
      onPressed: (){
       Fluttertoast.showToast(msg:"To Euro = ${x}",toastLength: Toast.LENGTH_SHORT,
       backgroundColor: Colors.deepPurple);


      },
      ),
      )
  );
}

else if (b=="USD"||b=="Usd"||b=="usd") {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("the value by Egiption pound is${a*18} L.E"),
        action: SnackBarAction(label: "To Euro",
          onPressed: (){
            Fluttertoast.showToast(msg:"To Euro = ${a*0.93}",toastLength: Toast.LENGTH_SHORT,
                backgroundColor: Colors.deepPurple);


          },
        ),
      )
  );
}

else if (b=="Euro"||b=="euro") {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("the value by Egiption pound is${a*20.01} L.E"),
        action: SnackBarAction(label: "To Euro",
          onPressed: (){
            Fluttertoast.showToast(msg:"To USD = ${a*1.07}",toastLength: Toast.LENGTH_SHORT,
                backgroundColor: Colors.deepPurple);


          },
        ),
      )
  );
}

else if(a==0||a<0){
  FlutterRingtonePlayer.play(
    android: AndroidSounds.notification
        ,ios: IosSounds.bell
      ,asAlarm: false
  );
}







































})



        ],) ,)









      ],) ,


    );
  }
}