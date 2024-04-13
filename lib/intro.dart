import 'package:bmi/splashscreen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMIApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan
      ),
      home:SplashScreen(),
    );
  }
}

class introScreen extends StatefulWidget{
  State<StatefulWidget> createState() {
    return introState();
  }
}
class introState extends State<introScreen> {
  var wtcont=TextEditingController();
  var ftcont=TextEditingController();
  var itcont=TextEditingController();
  var result="";
  var bgcolor=Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,

        body: Container(
          decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/wallpaper_bmi.webp"),fit: BoxFit.cover,)

          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
            width: 100,
            height: 100,
            child: CircleAvatar(

              child: Center(child:Image.asset("assets/images/logo.png") ),

            ),
          ),
              Text("BMI CALCULATOR",style: TextStyle(fontSize: 40,fontFamily: 'FontMain',color: Colors.yellow),),
              SizedBox(
                height: 10,
              ),


              TextField(
                keyboardType: TextInputType.number,
                controller: wtcont,
                style: TextStyle(color: Colors.white,fontSize: 25),
                decoration: InputDecoration(

                  hintText: "ENTER YOUR WEIGHT",
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.lightGreenAccent),

                  suffixIcon: Icon(Icons.monitor_weight,color: Colors.lightGreenAccent,),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: Colors.lightGreenAccent,
                        width:3
                    ),

                  ),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          color: Colors.cyanAccent,
                          width:3

                      )


                  ),

                ),
              ),
              SizedBox(
                height: 4,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: ftcont,
                style: TextStyle(color: Colors.white,fontSize: 25),
                decoration: InputDecoration(
                  hintText: "ENTER YOUR HEIGHT (FEETS)",
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.lightGreenAccent),

                  suffixIcon: Icon(Icons.height_outlined,color: Colors.lightGreenAccent,),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: Colors.lightGreenAccent,
                        width:3
                    ),

                  ),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          color: Colors.cyanAccent,
                          width:3

                      )


                  ),

                ),
              ),
              SizedBox(
                height: 4,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: itcont,
                style: TextStyle(color: Colors.white,fontSize: 25),
                decoration: InputDecoration(
                  hintText: "ENTER YOUR HEIGHT (INCH)",
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.lightGreenAccent),

                  suffixIcon: Icon(Icons.height_outlined,color: Colors.lightGreenAccent,),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: Colors.lightGreenAccent,
                        width:3
                    ),

                  ),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          color: Colors.cyanAccent,
                          width:3

                      )


                  ),

                ),
              ),
              ElevatedButton(onPressed: () {
                var wt=wtcont.text.toString();
                var ft=ftcont.text.toString();
                var inch=itcont.text.toString();

                if(wt!="" && ft!="" && inch!=""){
                  var iWt=int.parse(wt);
                  var iFt=int.parse(ft);
                  var iInch=int.parse(inch);

                  var tInch = (iFt *12) + iInch;
                  var tCm=tInch*2.54;
                  var tM=tCm/100;
                  var bmi=iWt/(tM*tM);
                  var msg="";

                  if (bmi>24){
                    msg= "YOU ARE OVER WEIGHT";
                    bgcolor=Colors.red;


                  }
                  else if(bmi<18){
                    msg="YOU ARE UNDER WEIGHT!";
                    bgcolor=Colors.indigoAccent ;

                  }
                  else{
                    msg="YOU ARE HEALTHY";
                    bgcolor=Colors.green.shade300;


                  }
                  setState(() {
                    result= "$msg \nYOUR BMI IS : ${bmi.toStringAsFixed(2)}";
                  });


                }






              }, child:Text("CALCULATE",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                color: Colors.black,
              ),) ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                child: Card(

                  elevation: 30,

                  color: Colors.white54,

                  child: Center(child: Text(result,style: TextStyle(fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),)),
                ),
              )

            ],
          ),
        )
    );
  }
}
