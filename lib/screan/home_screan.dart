import "package:flutter/material.dart";


class HomeApp extends StatefulWidget{
  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var textController=TextEditingController(); 

  String text=" ";

  @override

  Widget build(BuildContext context){


    return Scaffold(

    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ 

        TextField(
          controller: textController,
        ),
        SizedBox(height: 40,),
        Text("$text",style: TextStyle(fontSize: 17),),
        TextButton(onPressed: (){
          setState(() {
            text=textController.text;
          });
          
        }, child: Text("ذخیره متن",style: TextStyle(color: Colors.black,fontSize: 20),))
      ],
    ),
    );
  }
}