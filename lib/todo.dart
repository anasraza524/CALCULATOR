import 'dart:js';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:todoapp/home.dart';

class todoo extends StatefulWidget {

  @override
  _todooState createState() => _todooState();
}

class _todooState extends State<todoo> {
 get items => [cb('Personal', Icons.personal_video_sharp),
 cb('Private', Icons.privacy_tip_outlined),
 cb('Business', Icons.business_center_outlined),
 cb('Study', Icons.menu_book_rounded),
 cb('Travel', Icons.emoji_transportation_sharp),
 cb('Shopping', Icons.shopping_bag),
  cb('Custom', Icons.dashboard_customize_outlined),


 ];
var output = '';
  get callbackFunction => null;
List<dynamic> lit =[1];

Widget bbc(name){
return Container(
    height: 50,
    width: 310,
    decoration: BoxDecoration(
      color: Colors.black12.withOpacity(.05),
      borderRadius: BorderRadius.circular(50),
      border: Border.all(width:1.5,color:Colors.black45),
      boxShadow: [BoxShadow(
        color: Colors.white10.withOpacity(0.5),
        blurRadius: 5,
        spreadRadius: 5,

      )]
    ),
  
    
       child: TextButton(onPressed: (){
  },child: 

               Align(
                 alignment: Alignment.centerLeft,
                                child: Row(
           
                   children: [
                     SizedBox(width:15,),
                     Icon(Icons.blur_circular_outlined,size: 25,color: Colors.black,),
                     SizedBox(width:10,),
                     Text(name,style:
                      TextStyle(
                       fontSize: 26,
                       color: Colors.black,
                       fontWeight: FontWeight.w500,

                     ),),
                   ],
                 ),
               ),
              

             
           ),
        
               
       
      
   
);

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Row(
          children: [
            
            Container(
              margin: EdgeInsets.all(70),
              child: Text('Todo'),
              ),
              IconButton(onPressed: (){},icon:Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.circle_notifications_sharp))
    
          ],
        ),
        
      ),
    drawer: Drawer(
      
child:  
Column(
  children: [
    DrawerHeader(child: Container(
      height: 10,
    )
    ,),
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Align(
            alignment: Alignment.topLeft,
            child: TextButton(onPressed: (){},child: Text('data'),)),
        ),
  ],
),
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text('Add Categories'),
          
          content: TextField(
            onChanged: (value){
             output= output;
            }
            
          ),
          actions: [
            ElevatedButton(onPressed: (){
setState(() {
   
  lit.add(bbc(output));
  Navigator.of(context).pop();
});

            }, child: Text('Add'))
          ],
        );
      }
      );
      

    },
    child: Icon(Icons.add),
    backgroundColor: Colors.black45,),
    

    body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text('Hello, Anas',style: TextStyle(color:
              Colors.black,fontSize: 45,
              fontWeight: FontWeight.bold
              ),),
              
                        ],
                      ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:10,left: 10,),
            child: Align(
              alignment: Alignment.topLeft,
              child:TextButton(onPressed: (){},child: Text('Categories',style: TextStyle(color:
              Colors.black,fontSize: 17,
              fontWeight: FontWeight.w500
              ),)),
          ),),
          CarouselSlider(items: items, options: CarouselOptions(
height: 130,
aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
          )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextButton(onPressed: (){},child: 
              Text('More Categories',style: TextStyle(color:
              Colors.black,fontSize: 17,
              fontWeight: FontWeight.w500
              ),)),
          ),),
          
      Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: bbc('Daliy Meetings'),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: bbc('Payments'),
           ),
         Padding(
             padding: const EdgeInsets.all(8.0),
             child: bbc('Home Chores'),
           ),
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: bbc('Time Table'),
           ),
           

  ],
)

        ],
   
   
      ),
    ),

    );

  }
}


Widget cb(name,icon){
return Container(
    height: 95,
    width: 210,
    decoration: BoxDecoration(
      color: Colors.black12.withOpacity(.05),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(width:1.5,color:Colors.black45),
      boxShadow: [BoxShadow(
        color: Colors.white10.withOpacity(0.5),
        blurRadius: 5,
        spreadRadius: 5,

      )]
    ),
  
    
       child: TextButton(onPressed: (){
Navigator.push(name, MaterialPageRoute(builder: (context)=>todo()));

       },child: Stack(
                children:[ Padding(
           padding: const EdgeInsets.only(top:20,bottom: 5,left: 10,right: 10),
           child: Column(
             children: [
               Row(
           
                 children: [
                   Icon(icon,size: 26,color: Colors.black,),
                   SizedBox(width: 5,),
                   Text(name,style:
                    TextStyle(
                     fontSize: 25,
                     color: Colors.black,
                     fontWeight: FontWeight.bold,

                   ),),
                 ],
               ),
               SizedBox(height: 23,),
                          Container(
                   color: Colors.black,
                 height: 1.5,
                 width: 140,
                 ),
                 SizedBox(height: 10,),
                Container(
                   color: Colors.black,
                 height: 1.5,
                 width: 140,
                 ),

             ],
           ),
         ),
                ]),
       
       ),
   
);

}




