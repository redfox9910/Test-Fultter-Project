import 'package:flutter/material.dart';
import 'package:untitled/login_Screen.dart';

class MessngerScreen  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          color: Colors.indigo,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  LoginScreen()),
            );
          },) ,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.indigo,
              child: Image.network("https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745"),

            ),
            SizedBox(width: 15,),
            Text("Chats" ,style: TextStyle(color: Colors.black87),),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.indigo,
            child: Icon(Icons.camera, color: Colors.white,),

          ),
          SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: Colors.indigo,
            child: Icon(Icons.edit, color: Colors.white),

          ),
          SizedBox(width: 15,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10) ,
              decoration: BoxDecoration(
                  color: Colors.indigo[500],
                  borderRadius: BorderRadius.circular(20)

              ),

              child: Row(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.white,),
                  SizedBox(width: 20,),
                  Text("search",style: TextStyle(color: Colors.white),),

                ],

              ),

            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index) => _buildStoryItem(),
                separatorBuilder:(context, index) => const SizedBox(width: 10,),
                itemCount:20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return _buildChatItem();
                },
                itemCount: 20,
                separatorBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(width: double.infinity, height: 1, color: Colors.grey),
                    ),
              ),
            ),
          ],


        ),
      ),

    );
  }


  Widget _buildChatItem() =>
      Container(
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.network("https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745"),
            ),
            const SizedBox(width: 15),
            Container(
              height: 50,
              child: Column(

                  children:  [
                const Text(
                  "Fox",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                    SizedBox(height: 4,),
                Container(
                  width: 100,
                  height: 16,
                  child: const Text(
                    "Hello Fox !!Hello Fox !!Hello Fox !!Hello Fox !!Hello Fox !!",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,

                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


              ]),
            ),
            //

            const Spacer(),
            Container(

              height: 50,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  const [
                    CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 7,
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    Text(
                      "2.50 am",

                      style: TextStyle(
                        fontSize: 15,

                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      );

  Widget _buildStoryItem() =>
      Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 35,
                child: Image.network(
                    "https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745"),
              ),
              const CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(bottom: 2, end: 2),
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const Text("Fox"),
        ],
      );
}
