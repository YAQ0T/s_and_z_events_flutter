import 'package:flutter/material.dart';
class CardView extends StatelessWidget {
  const CardView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(

      color: Color(0xFFC297B8),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Image(
              image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Chinese_vase.jpg/220px-Chinese_vase.jpg',scale: 2),
          ),
           Padding(
             padding: EdgeInsets.all(15.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("مزهرية",style: TextStyle(
                   fontSize: 25,
                   color: Color(0XFF40434E)
                 ),
                 ),
                 Text('مزهرية حلوه وكيوت',
                   style: TextStyle(
                     color: Color(0XFF40434E),
                     fontSize: 20

                 ),
                 ),
               ],
             ),
             
           ),
          Text("55.5 شيقل",
            style: TextStyle(
              color: Color(0XFF40434E),
              fontSize: 20

          ),
          )
        ],
      ),
    );
  }
}
