import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ContainerWidget(),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {

    Size size= MediaQuery.of(context).size/4;
    return  Scaffold(
     body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [

           const Text("BoxContainers property",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w400,color:Colors.blue),),
           Container(
             height:120,// This property is used to set the container's height and width according to our needs. By default, the container always takes the space based on its child widget.
             color:Colors.green[300],
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   margin: const EdgeInsets.all(15),//This property is used to surround the empty space around the container. We can observe this by seeing space b/w outside and inside container.
                   padding: const EdgeInsets.all(15), //This property is used to set the distance between the border of the container (all four directions) and its child widget. We can observe this by seeing the space between the container and the child widget.
                   alignment: Alignment.bottomLeft,// This property is used to set the position of the child within the container. Flutter allows the user to align its element in various ways such as center, bottom, bottom center, topLeft, centerRight, left, right, and many more.
                   transform: Matrix4.rotationZ(0.1),  //The transform property allows developers to rotate the container. It can rotate the container in any direction, i.e., change the container coordinate in the parent widget. we will rotate the container in the z-axis.
                   transformAlignment: Alignment.topRight,
                   color: Colors.red[200],
                   child:const Text("container 1 with transform property"),
                 ),
                 Container(
                   margin: const EdgeInsets.all(15),//This property is used to surround the empty space around the container. We can observe this by seeing space b/w outside and inside container.
                   padding: const EdgeInsets.all(15), //This property is used to set the distance between the border of the container (all four directions) and its child widget. We can observe this by seeing the space between the container and the child widget.
                   alignment: Alignment.center,// This property is used to set the position of the child within the container. Flutter allows the user to align its element in various ways such as center, bottom, bottom center, topLeft, centerRight, left, right, and many more.
                   color: Colors.blue[200],
                   constraints:  const BoxConstraints.expand(width: 160.0),//This property is used when we want to add additional constraints to the child. It contains various constructors, such as tight, loose, expand, etc.
                   child:const Text("container 2 with constraint.expand property"),
                 ),
                 Container(
                      margin: const EdgeInsets.all(15),//This property is used to surround the empty space around the container. We can observe this by seeing space b/w outside and inside container.
                      padding: const EdgeInsets.all(15), //This property is used to set the distance between the border of the container (all four directions) and its child widget. We can observe this by seeing the space between the container and the child widget.
                      alignment: Alignment.topRight,// This property is used to set the position of the child within the container. Flutter allows the user to align its element in various ways such as center, bottom, bottom center, topLeft, centerRight, left, right, and many more.
                      color: Colors.yellowAccent[200],
                       constraints: BoxConstraints.loose(size),
                      child:const Text("container 3 with constraint.loose property"),
                   ),
                 Container(
                   height:200,
                   width:200,
                   alignment: Alignment.topLeft,
                   decoration:  const BoxDecoration(
                     image: DecorationImage(image: NetworkImage('https://1.bp.blogspot.com/-kK7Fxm7U9o0/YN0bSIwSLvI/AAAAAAAACFk/aF4EI7XU_ashruTzTIpifBfNzb4thUivACLcBGAsYHQ/s1280/222.jpg'),filterQuality: FilterQuality.high,fit: BoxFit.cover),
                     //borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),//A borderRadius can only be given on borders with uniform colors and styles. not with BorderSide.color
                     shape: BoxShape.rectangle,
                     border: //Border.all(color,width,style) //Border.symmetric(vertical,horizontal)
                     //This property depends on the shape of container
                     Border(//separate define for all four sides
                         left: BorderSide(color: Colors.blue,width: 12.0),
                         right: BorderSide(color: Colors.blue,width: 8.0),
                         top: BorderSide(color: Colors.lightBlueAccent,width: 8.0),
                         bottom: BorderSide(color: Colors.lightBlueAccent,width: 12.0)
                     ),
                   ),
                   child: const Text(' BoxDecoration Property'),
                 ),],
             )
           ),

            const Text("Linear Gradient Containers",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w400,color:Colors.blue),),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Container(
                 height: 200,
                 width: 200,
                 alignment: Alignment.center,
                 decoration: const BoxDecoration(
                    gradient: LinearGradient(
//The begin & end parameters define the path of our Linear gradient. By default, the values of begin & end properties are set to centerLeft & centerRight respectively.
                      begin: Alignment(0.5,0.7),
                      end:  Alignment(0.7, 0.7),
                        colors: [Colors.blue,Colors.red],
//The reason for not adding more colors is that with too many colors the gradient becomes sharp. There won’t be a smooth transition of the colors and looks clumsy.
                     stops: [0.4, 0.7],//The stops list specifies the fractions of the vector from start to end. The stops parameter takes a List of values between 0.0 and 1.0 for each color. If the stops parameter is not mentioned/null then a uniform distribution is applied.
                      tileMode: TileMode.mirror,//It works when the begin and end define with co-ordinates
                    )
                 ),
                 child:const Text("TileMode.mirror")
               ),
               Container(
                   height: 200,
                   width: 200,
                   alignment: Alignment.center,
                   decoration: const BoxDecoration(
                       gradient: LinearGradient(
//The begin & end parameters define the path of our Linear gradient. By default, the values of begin & end properties are set to centerLeft & centerRight respectively.
                         begin: Alignment(0.5,0.7),
                         end:  Alignment(0.7, 0.7),
                         colors: [Colors.blue,Colors.red],
//The reason for not adding more colors is that with too many colors the gradient becomes sharp. There won’t be a smooth transition of the colors and looks clumsy.
                          stops: [0.4, 0.7],//The stops list specifies the fractions of the vector from start to end. The stops parameter takes a List of values between 0.0 and 1.0 for each color. If the stops parameter is not mentioned/null then a uniform distribution is applied.
                         tileMode: TileMode.clamp,
                       )
                   ),
                   child:const Text("TileMode.clamp")
               ),
               Container(
                   height: 200,
                   width: 200,
                   alignment: Alignment.center,
                   decoration: const BoxDecoration(
                       gradient: LinearGradient(
//The begin & end parameters define the path of our Linear gradient. By default, the values of begin & end properties are set to centerLeft & centerRight respectively.
                         begin: Alignment(0.5,0.7),
                         end:  Alignment(0.7, 0.7),
                         colors: [Colors.blue,Colors.red],
//The reason for not adding more colors is that with too many colors the gradient becomes sharp. There won’t be a smooth transition of the colors and looks clumsy.
                          stops: [0.4, 0.7],//The stops list specifies the fractions of the vector from start to end. The stops parameter takes a List of values between 0.0 and 1.0 for each color. If the stops parameter is not mentioned/null then a uniform distribution is applied.
                         tileMode: TileMode.decal,
                       )
                   ),
                   child:const Text("TileMode.decal")
               ),
               Container(
                   height: 200,
                   width: 200,
                   alignment: Alignment.center,
                   decoration: const BoxDecoration(
                       gradient: LinearGradient(
//The begin & end parameters define the path of our Linear gradient. By default, the values of begin & end properties are set to centerLeft & centerRight respectively.
                         begin: Alignment(0.5,0.7),
                         end:  Alignment(0.7, 0.7),
                         colors: [Colors.blue,Colors.red],
//The reason for not adding more colors is that with too many colors the gradient becomes sharp. There won’t be a smooth transition of the colors and looks clumsy.
                          stops: [0.4, 0.7],//The stops list specifies the fractions of the vector from start to end. The stops parameter takes a List of values between 0.0 and 1.0 for each color. If the stops parameter is not mentioned/null then a uniform distribution is applied.
                         tileMode: TileMode.repeated,
                       )
                   ),
                   child:const Text("TileMode.repeated")
               ),
               Container(
                   height: 200,
                   width: 200,
                   alignment: Alignment.center,
                   decoration: const BoxDecoration(
                       gradient: LinearGradient(
//The begin & end parameters define the path of our Linear gradient. By default, the values of begin & end properties are set to centerLeft & centerRight respectively.
                         begin: Alignment.centerLeft,
                         end:  Alignment.centerRight,
                         colors: [Colors.blue,Colors.red],
//The reason for not adding more colors is that with too many colors the gradient becomes sharp. There won’t be a smooth transition of the colors and looks clumsy.
                         stops: [0.4, 0.7],//The stops list specifies the fractions of the vector from start to end. The stops parameter takes a List of values between 0.0 and 1.0 for each color. If the stops parameter is not mentioned/null then a uniform distribution is applied.
                         //tileMode: TileMode.repeated,
                       )
                   ),
                   child:const Text("Normal Linear Gradient")
               ),
             ],
           ),

           const Text("Radial Gradient Containers",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w400,color:Colors.blue)),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Container(
                 alignment: Alignment.center,
                 height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   gradient: const RadialGradient(
                     colors: [Colors.red, Colors.yellow],
                     radius: 0.75,
                     center: Alignment.center,//It aligns the colors at given position. colors is start from starting that is red color at center then yellow again so on
                     stops: [0.4, 0.7],
                     tileMode: TileMode.mirror,
                     //transform: GradientRotation(2),// GradientTransform transform: The transform to be applied to the gradient
                     focal: Alignment.centerLeft,//AlignmentGeometry focal: The focal point of the gradient.
                     focalRadius: 0.1, // double focalRadius: The radius of the focal point of gradient, as a fraction of the shortest side of the paint box.
                   ),
                 ),
                 child: const Text('Alignment.center,TileMode.mirror,focal.left'),
               ),
               Container(
                 alignment: Alignment.center,
                 height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   gradient: const RadialGradient(
                     colors: [Colors.red, Colors.yellow],
                     radius: 0.75,
                     center: Alignment.topCenter,//It aligns the colors at given position. colors is start from starting that is red color at center then yellow again so on
                     stops: [0.4, 0.7],
                     tileMode: TileMode.clamp,
                     //transform: GradientRotation(2),// GradientTransform transform: The transform to be applied to the gradient
                     focal: Alignment.center,//AlignmentGeometry focal: The focal point of the gradient.
                     focalRadius: 0.1, // double focalRadius: The radius of the focal point of gradient, as a fraction of the shortest side of the paint box.
                   ),
                 ),
                 child: const Text('Alignment.topCenter,TileMode.clamp,focal.center'),
               ),
               Container(
                 alignment: Alignment.center,
                 height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   gradient: const RadialGradient(
                     colors: [Colors.red, Colors.yellow],
                     radius: 0.75,
                     center: Alignment.center,//It aligns the colors at given position. colors is start from starting that is red color at center then yellow again so on
                     stops: [0.4, 0.7],
                     tileMode: TileMode.decal,
                     //transform: GradientRotation(2),// GradientTransform transform: The transform to be applied to the gradient
                     focal: Alignment.centerRight,//AlignmentGeometry focal: The focal point of the gradient.
                     focalRadius: 0.1, // double focalRadius: The radius of the focal point of gradient, as a fraction of the shortest side of the paint box.
                   ),
                 ),
                 child: const Text('Alignment.center,TileMode.decal,focal.Right'),
               ),
               Container(
                 alignment: Alignment.center,
                 height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   gradient: const RadialGradient(
                     colors: [Colors.red, Colors.yellow],
                     radius: 0.75,
                     center: Alignment.center,//It aligns the colors at given position. colors is start from starting that is red color at center then yellow again so on
                     stops: [0.4, 0.7],
                     tileMode: TileMode.repeated,
                     //transform: GradientRotation(2),// GradientTransform transform: The transform to be applied to the gradient
                     focal: Alignment.center,//AlignmentGeometry focal: The focal point of the gradient.
                     focalRadius: 0.1, // double focalRadius: The radius of the focal point of gradient, as a fraction of the shortest side of the paint box.
                   ),
                 ),
                 child: const Text('Alignment.center,TileMode.repeated,focal.center'),
               ),
               Container(
                 alignment: Alignment.center,
                 height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   gradient: const RadialGradient(
                     colors: [Colors.red, Colors.yellow, Colors.blue],
                     radius: 0.75,
                     center: Alignment.center,//It aligns the colors at given position. colors is start from starting that is red color at center then yellow again so on
                     focal: Alignment.centerLeft,//AlignmentGeometry focal: The focal point of the gradient.
                     focalRadius: 0.1, // double focalRadius: The radius of the focal point of gradient, as a fraction of the shortest side of the paint box.
                   ),
                 ),
                 child: const Text('Alignment.center,focal.left'),
               ),
             ],
           ),

           const Text("Shadow Containers",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w400,color:Colors.blue)),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Container(
                 height: 200,
                   width: 200,
                 alignment: Alignment.center,
                 foregroundDecoration: const BoxDecoration(), // The decoration to paint in front of the child
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                margin:  const EdgeInsets.all(12),
                   decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(
                      color: Colors.greenAccent[200]!,
                      offset:  const Offset(
                        5.0,5.0
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                      blurStyle: BlurStyle.inner
                    ),
                    const BoxShadow(
                        color: Colors.white,
                        offset:  Offset(
                            0.0,0.0
                        ),
                    )
                  ]
                ),
                 child: const Text("Container with Shadow inner")
               ),
               Container(
                   height: 200,
                   width: 200,
                   alignment: Alignment.center,
                   foregroundDecoration: const BoxDecoration(), // The decoration to paint in front of the child
                   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                   margin:  const EdgeInsets.all(12),
                   decoration: BoxDecoration(
                       boxShadow:[
                         BoxShadow(
                             color: Colors.greenAccent[200]!,
                             offset:  const Offset(
                                 10.0,10.0
                             ),
                             blurRadius: 10.0,
                             spreadRadius: 2.0,
                             blurStyle: BlurStyle.normal
                         ),
                         const BoxShadow(
                             color: Colors.white,
                             offset:  Offset(
                                 0.0,0.0)
                         )
                       ]
                   ),
                   child: const Text("Container with Shadow normal with offset 10.0,10.0")
               ),
               Container(
                   height: 200,
                   width: 200,
                   alignment: Alignment.center,
                   foregroundDecoration: const BoxDecoration(), // The decoration to paint in front of the child
                   padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                   margin:  const EdgeInsets.all(12),
                   decoration: BoxDecoration(
                       boxShadow:[
                         BoxShadow(
                             color: Colors.greenAccent[200]!,
                             offset:  const Offset(
                                 10.0,10.0
                             ),
                             blurRadius: 10.0,
                             spreadRadius: 2.0,
                             blurStyle: BlurStyle.solid
                         ),
                         const BoxShadow(
                             color: Colors.white,
                             offset:  Offset(
                                 0.0,0.0)
                         )
                       ]
                   ),
                   child: const Text("Container with Shadow solid with offset 10.0,10.0")
               ),
               Container(
                   height: 200,
                   width: 200,
                   alignment: Alignment.center,
                   foregroundDecoration: const BoxDecoration(), // The decoration to paint in front of the child
                   padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                   margin:  const EdgeInsets.all(12),
                   decoration: BoxDecoration(
                       boxShadow:[
                         BoxShadow(
                             color: Colors.greenAccent[200]!,
                             offset:  const Offset(
                                 5.0,5.0
                             ),
                             blurRadius: 10.0,
                             spreadRadius: 2.0,
                             blurStyle: BlurStyle.outer
                         ),
                       ]
                   ),
                   child: const Text("Container with Shadow outer")
               ),
             ],
           )
         ],
       ),
     )
    );
  }
}
