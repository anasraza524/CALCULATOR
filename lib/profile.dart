import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todoapp/todo.dart';


class signin extends StatefulWidget {
  const signin({ Key? key }) : super(key: key);

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black26,
    appBar: AppBar(toolbarHeight: 60,
      bottomOpacity: 55,backgroundColor: Colors.black,
          title: Center(child:  Text("T O D O",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),)
          
          
         
          ),

          body: Center(
            child: Column(
              children: [
                  
                   SizedBox(height:50,),
               
                    Container(
                      child: CircleAvatar( 
                        backgroundColor: Colors.black12,
                        
                      radius: 120,
                        backgroundImage: AssetImage
                      ('asstes/12.png'),
                       
                       ),
                    ) ,
                      SizedBox(height: 60,),   
                    Container(
                      height: 60,
                      width: 200,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                      color: Colors.black,),
                      
                      
                      child:
                    
                   
               
                    TextButton(
                      
  style: ButtonStyle(
    
    
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  ),
  onPressed: () {Navigator.push(context,
  MaterialPageRoute(builder: (context)=>id())); },
  child: Text('Todo Now',
  style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
), )
                  
                ])
                
                )
             
            );
        
          
    
  }
}










                // id class start here





 class id extends StatefulWidget {
   const id({ Key? key }) : super(key: key);
 
   @override
   _idState createState() => _idState();
 }
 
 class _idState extends State<id> {
   @override
   Widget build(BuildContext context) {
     return Scaffold( appBar: AppBar(toolbarHeight: 40,
      bottomOpacity: 55,backgroundColor: Colors.black,
          title: Center(child:  Text('Profile')),),
          
          body:
             SingleChildScrollView(
               child: Column(
                 children: [
                   Container(
                      
                          height: 190,
                          width: 358,
                         color: Colors.black26, 
                         child: 
         
                        
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: CircleAvatar(
                             
                             radius: 100,
                             
                             backgroundImage:
                           AssetImage('asstes/pr.png'),
                   
      ),
                         ),

      
          ),
          Column(
            children:[
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   bc('Full Name', 'Full Name'),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   bc('Email', 'Email@.com'),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   bc('Contect', '111.222.333'),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   bc('Full Address', 'Address'),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   bc('Date of Brith', 'MM/DD/YYYY'),
),
               
             ] ) , 
               
                     //  Done Button Container
      SizedBox(height: 9,),
Container(
height: 30,
width: 70,
       child:  ElevatedButton(
  style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.black), 
  ),
  
  onPressed: () { Navigator.push(context,
  MaterialPageRoute(builder: (context)=>todoo()));},
  child: Text('Done',style: TextStyle(fontSize: 20),),
       

),
),
          SizedBox(height: 10,),
          Container(
            width: 350,
            height: 10,
            color: Colors.black,
          )
                 ],
               ),
             )  ,
          
         


          );
          
    
          
      
          
     
     
    
         
          

       
       
     
   }
 }


Widget bc(name,hintname){
return  Column( 
            children: [


                Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  
                
               
                  Container(
                   height: 40,
                   width: 280,
                   child: TextField( 
                     
  decoration: InputDecoration(fillColor: Colors.blueGrey,
      border: OutlineInputBorder( 
      )
      ,
      
      hintText: hintname,
  ),
),),
               
    
                
            ],
          );
}