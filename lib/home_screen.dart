import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.menu),
        title: Text("test app"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.hail),
              onPressed: () {
                print("button clicked");
              } // you can write it as void function out of the code and call it
          ),
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.shop),
          SizedBox(
            width: 10,
          )

          //   Center(child: Text("fox"),)
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment:Alignment.bottomCenter ,
            children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(


                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50),)
                  ),
                  child: Image.network(
                    "https://149434221.v2.pressablecdn.com/wp-content/uploads/2015/08/dot-online.png",
                    width: 150,
                    height: 150,
                    fit:BoxFit.fill ,
                  )),
              Container(
                width: 320,
                height: 50,

                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),

                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50),)
                ),
                child: Center(child: Text("hello",style: TextStyle(color: Colors.white),)),
              ),
            ],
          )
        ],
      ),

      // Test code 2

      /*Container(
        color: Colors.deepPurpleAccent,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Stack(
             alignment: Alignment.topRight,
             children: [
               Icon(Icons.notifications , color: Colors.white,size: 40,),
               Container(
                 width: 20,
                 height: 20,
                 decoration: BoxDecoration(
                     color: Colors.black45,
                     borderRadius: BorderRadius.circular(60)),
                 child: Center(
                   child: Text(
                     "5",
                     style: TextStyle(color: Colors.white),
                   ),
                 ),
               ),

             ],
           )
          ],
        ),
      ),*/
      //test code 1
      /* Container(


       color: Colors.white,
       width: double.infinity,                         // make it resize with screen width
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text(
             "first app",
             style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
           ),

         ],
       ),
     )*/
    );
  }
}
