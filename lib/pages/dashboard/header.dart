import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Color(0xcccccc),
      child:  Row(
            children: [
              Container(padding: EdgeInsets.all(5),
                child: Stack(
                  alignment : AlignmentDirectional.center,
                  children: [
                  Container(
                    decoration: BoxDecoration(
                          color: const Color(0x556dd230),
                          borderRadius: BorderRadius.circular(56),
                        ),
                    width: 56,
                    height: 56,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0x886dd230),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    width: 40,
                    height: 40,
                  ),
                  Text("",style: TextStyle(fontFamily: "Line",color: Colors.white,fontSize: 22),
                  )
                ],),
              ),
              Expanded(
                child:Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(

                mainAxisAlignment : MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                  Text("90/180",style: TextStyle(fontSize: 26),),
                  Text("Tasks complete",style: TextStyle(fontSize: 14,color: Color(0xff98a9bc)))],),
              ))
              ,
              Container(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '99.8%',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0x886dd230),
                      ),
                    )),
              ),
            ],
          ),
    );
  }
}
