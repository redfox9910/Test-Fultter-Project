import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
   ContactList({Key? key}) : super(key: key);
List<ContactItems> Contacts = [
  ContactItems(fname: "mohamed",lname: "khaled",phone: "01199"),
  ContactItems(fname: "ahmed",lname: "mohamed",phone: "01080"),
  ContactItems(fname: "azmy",lname: "sayed",phone: "01100"),
  ContactItems(fname: "abdo",lname: "khaled",phone: "01209"),
  ContactItems(fname: "mohamed",lname: "adel",phone: "01229"),
  ContactItems(fname: "hazem",lname: "ali",phone: "010052"),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Contact")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(itemBuilder: (context, index)=>_BulidContact(Contacts[index]),
            separatorBuilder: (context, index) =>Container(color: Colors.indigo,height: 1,),
            itemCount: Contacts.length,
            // shrinkWrap: true , // to make the list build 1 time ,
        ),
      ),

    );
  }

  Widget _BulidContact(ContactItems contactItems)=>Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start, // sol 1
      children: [
         CircleAvatar(
          backgroundColor: Colors.indigo,
          radius: 25,
          child: Text((contactItems.fname[0]+contactItems.lname[0])??"",style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
        ),
        const SizedBox(width: 10,),
        Column(
          //mainAxisSize: MainAxisSize.min, //sol 2
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text((contactItems.fname+" "+contactItems.lname)??"",style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),),
            Text(contactItems.phone??"",style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,

            ),

            )

          ],

        ),

      ],
    ),
  );
}

class ContactItems
{

  String fname;
  String lname;
  String? phone;
ContactItems({required this.fname,required this.lname,required this.phone});
}
