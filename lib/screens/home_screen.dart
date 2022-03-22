import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
/* int currentIndex=0;
 final screens= [
    const Center(child:Text('Shopping',style:TextStyle(fontSize:60))),
     const Center(child:Text('Home',style:TextStyle(fontSize:60))),
      const Center(child:Text('Sell',style:TextStyle(fontSize:60))),
     const Center(child:Text('Credit',style:TextStyle(fontSize:60))),
    const Center(child:Text('Details',style:TextStyle(fontSize:60))),

  ];*/
  Widget build(BuildContext context) {
    final Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title:const Text("Welcome",
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w500,
      ),),
     centerTitle:true,
      ),
  backgroundColor:const Color.fromARGB(255, 177, 166, 166),
  body:Stack(
    children: [
      Positioned(
        bottom:0,
        left:0,
        child:SizedBox(
         width:size.width,
         height:80,
         child:Stack(
         children :[
           CustomPaint(
             size:Size(size.width, 80),
             painter: BNBCustomPainter(),
           ),
           Center(
           heightFactor: 0.6,
           child:FloatingActionButton(onPressed:() {},
           backgroundColor:Colors.orange,
           child:const Icon(Icons.shopping_basket),elevation: 0.1 ,),
             ),
           SizedBox(
             width:size.width,
             height:60,
             child:
            
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:[
                 IconButton(icon: const Icon(Icons.home),
                onPressed:() {}),
                 IconButton(icon:const Icon(Icons.sell_outlined),
                onPressed:() {}), 
                  Container(width: size.width*0.20,),
                 IconButton(icon:const Icon(Icons.credit_card),
                onPressed:() {}),
                 IconButton(icon:const Icon(Icons.details_outlined),
                onPressed:() {}),
               ],
               ),
               )
         ],
         )
        )

      )
    ],
  )
      
    );
  }
}
class BNBCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
  Paint paint = Paint()..color = Colors.white..style = PaintingStyle.fill;
  Path path = Path()..moveTo(0,20);
  path.quadraticBezierTo(size.width*0.20, 0, size.width*0.35, 0);
  path.quadraticBezierTo(size.width*0.40, 0, size.width*0.40, 20);
  path.arcToPoint(Offset(size.width*0.60,20),
  radius:const Radius.circular(10.0),clockwise: false);
   path.quadraticBezierTo(size.width*0.60, 0, size.width*0.65, 0);
  path.quadraticBezierTo(size.width*0.80, 0, size.width, 20);
  path.lineTo(size.width,size.height);
  path.lineTo(0,size.height);
  path.close();
  canvas.drawShadow(path,Colors.black,5,true);
  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  

}