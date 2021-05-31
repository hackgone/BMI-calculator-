import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'part1.dart';
const fred = Color(0xFF1D1E33);
const freed= Colors.blueAccent;
int val=180;

class New extends StatefulWidget {
  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  Color men = fred;
    Color women = fred;
  @override
  Widget build(BuildContext context) {
    

    void func (int num){
      if (num == 1){
        if (men ==fred){
          men=freed;
          women=fred;
        }
        else{
          men=fred;

        }
      }
      if(num==2){
        if(women==fred){
          women=freed;
          men=fred;
        }
        else{
          women=fred;
        }
      }


    }


    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI CALCULATOR')),),
      
          
        
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
                children: <Widget>[
                  Expanded(
                  child:GestureDetector(
                    onTap: (){
                      setState(() {
                        func(1);
                      });
                    },
                                      child: Easy(colour: men
                    ,
                    cardg: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
          Icon(
            FontAwesomeIcons.mars,
            size: 60.0,
            
          ),
          SizedBox(height: 5.0,),
          Text('Male', textScaleFactor: 2.0,
          )
                      ],
                    ),
                    
                    ),
                  ), 
      ),Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  func(2);
                });
              },
                          child: Easy(colour: women,cardg: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Icon(
      FontAwesomeIcons.venus, size: 60.0,
              ),
              SizedBox(height: 5.0,),
              Text('Female',textScaleFactor: 2.0,)
          ],
              ),),
            )
        ),
                ],
              ),
            ),
          Expanded(
              child: Container(
          margin: EdgeInsets.all(15.0),
         
          width: 400.0,
          height: 170.0,
          decoration: BoxDecoration( color: Color(0xFF1D1E33),
            borderRadius: BorderRadius.circular(10.0),
            
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HEIGHT'),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('$val cm', style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold ),)
                  
                ],
              ),
              Slider(value: val.toDouble(),
              max: 220.0,
              min: 120,
              activeColor: Color(0xFFEB1555),
              inactiveColor: Colors.limeAccent,
              
               onChanged: (double newval){
                 setState(() {
                   
                    val=newval.round();

                 });

                

               })
            ],
            
          ),
        ),
        
      ),
      Expanded(
              child: Row(
          children: <Widget>[
            Expanded(
                child: Easy(colour: fred,
                ),
        ),Expanded(
                child:Easy(colour: fred,
            ),)
          
        
          ],
        ),
      ),
      Container(
      margin: EdgeInsetsDirectional.only(top: 10.0),
      
          width: double.infinity,
          color: Colors.redAccent,
          height:80.0,
        )
        
        ],
      
      
      
      ),);
      
    
  }
}

