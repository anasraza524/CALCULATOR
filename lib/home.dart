import 'package:flutter/material.dart';


class todo extends StatefulWidget {


  @override
  _todoState createState() => _todoState();
}

class _todoState extends State<todo> {
var output = "";
  List<dynamic> lit = [1,2,3,4,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: lit.length,
        itemBuilder: (context,index) {
return Container(
  height: 40,
  color: Colors.amberAccent,
  margin: EdgeInsets.all(10),
child:ListTile(
title: Text('${lit[index]}'),
trailing: Container(
  width: 50,
  child:   Row(
  
    children: [
  
          GestureDetector(
        onTap: (){
         showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text('Edit Items'),
          
          content: TextField(
            onChanged: (value){
              output = value;
            }
            
          ),
          actions: [
            ElevatedButton(onPressed: (){

setState(() {
  lit.replaceRange(index, index+1, {output});
 
});
 Navigator.of(context).pop();
            }, child: Text('EDIT'))
          ],
        );
      });
        },
        child: Icon(Icons.edit)),








        GestureDetector(
        onTap: (){
         setState(() {
           lit.removeAt(index);
         });
          
        },
        child: Icon(Icons.delete)),
  
    ],
  
  ),
),

)   
);
        }
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text('Add Items'),
          
          content: TextField(
            onChanged: (value){
              output = value;
            }
            
          ),
          actions: [
            ElevatedButton(onPressed: (){
setState(() {
  lit.add(output);
  Navigator.of(context).pop();
});

            }, child: Text('Add'))
          ],
        );
      }
      );
      

    },
    child: Icon(Icons.add),),
    );
  }
}