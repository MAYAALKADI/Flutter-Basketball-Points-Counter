import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange, 
          title:const Text('Point Counter',style: TextStyle(
            color: Colors.white,
          ),),
          ),
          body:Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          const Text('Team A',style: TextStyle(
                            fontSize: 30,
                          ),),
                           SizedBox(
                              width: 200, // عرض تقريبي ثابت
                              height: 230,
                              child: AutoSizeText(
                                '$teamAPoints',
                                style: const TextStyle(
                                  fontSize: 130, 
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1, 
                                minFontSize: 50, 
                                textAlign: TextAlign.center,
                              ),
                            ),

                          ElevatedButton(
                          onPressed: (){
                            setState(() {
                              teamAPoints++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child:const Text(
                            'Add 1 Point',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),)
                          ),
                          ElevatedButton(
                          onPressed: (){
                            setState(() {
                              teamAPoints+=2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child:const Text(
                            'Add 2 Point',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),)
                          ),
                          ElevatedButton(
                          onPressed: (){
                            setState(() {
                              teamAPoints+=3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child:const Text(
                            'Add 3 Point',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),)
                          ),
                        ],
                      ),
                    ),
                     Container(
                      width: 1,
                      height:430,
                      color: Colors.grey,
                     ),
                    Column(
                      children: [
                        const Text('Team B',style: TextStyle(
                          fontSize: 30,
                        ),),
                         SizedBox(
                          width: 200, // عرض تقريبي ثابت
                          height: 230,
                          child: AutoSizeText(
                            '$teamBPoints',
                            style: const TextStyle(
                              fontSize: 130, // الحجم الابتدائي الكبير
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1, // سطر واحد فقط
                            minFontSize: 50, // الحد الأدنى لتصغير الخط
                            textAlign: TextAlign.center,
                          ),
                        ),

                        ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        child:const Text(
                          'Add 1 Point',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)
                        ),
                        ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamBPoints+=2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        child:const Text(
                          'Add 2 Point',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)
                        ),
                        ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamBPoints+=3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        child:const Text(
                          'Add 3 Point',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 90,),
                Container(
                  width: 150,
                  child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              teamAPoints = 0;
                            teamBPoints = 0;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child:const Text(
                            'Reset',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),)
                          ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
