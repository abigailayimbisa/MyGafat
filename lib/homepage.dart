import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? valueChoosen;
  List<String> country = [
  "Ghana",
  "Nigeria",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title:
            Container(
              height: 100,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                  ),
                )
            ),

            // Text("GAFATCASH",style: GoogleFonts.abel(color: Colors.blue),),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text("Log In",style: GoogleFonts.abel(fontSize: 15),),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(150.0, 50.0)), // Adjust width and height as needed
                      ),
                    ),
                  ),

                  SizedBox(width: 20,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: (){

                      },
                      child: Text("Sign Up",style: GoogleFonts.abel(fontSize: 15),),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(150.0, 50.0)), // Adjust width and height as needed
                      ),
                    ),
                  ),
                ],
              ),


            ],
            // bottom: const TabBar(
            //   labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
            //   indicatorColor: Colors.red,
            //   indicatorWeight: 2,
            //   labelColor: Colors.red,
            //   unselectedLabelColor: Colors.black,
            //   labelStyle: TextStyle(
            //     fontWeight: FontWeight.bold,
            //   ),
            //   tabs: [
            //     Tab(text: "Send Money",),
            //     Tab(text: "Track + Receive",),
            //     Tab(text: "Find a Location",),
            //     Tab(text: "Pay Bills",),
            //     Tab(text: "Plus Rewards",),
            //     Tab(text: "Help Center",),
            //   ],
            // ),
          ),

          body:  SingleChildScrollView(
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                      },
                      child: Text(
                        'Send Money',
                        style: GoogleFonts.abel(color: Colors.black,fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 60),
                    TextButton(
                      onPressed: () {
                      },
                      child: Text(
                        'Track + Receive',
                        style: GoogleFonts.abel(color: Colors.black,fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 60),
                    TextButton(
                      onPressed: () {
                        // Navigate to Get Involved screen
                      },
                      child: Text(
                        'Find a Location',
                        style: GoogleFonts.abel(color: Colors.black,fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 60),
                    TextButton(
                      onPressed: () {
                        // Navigate to Contact Us screen
                      },
                      child:  Text(
                        'Pay Bills',
                        style: GoogleFonts.abel(color: Colors.black,fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 60),

                    TextButton(
                      onPressed: () {
                        // Navigate to Contact Us screen
                      },
                      child: Text(
                        "Help Center",
                        style: GoogleFonts.abel(color: Colors.black,fontSize: 20),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                Container(
                    height: 600,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/2.jpg"))
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 600,
                          height: 350,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 100),
                                child: Text(text1,style: GoogleFonts.abel(color: Colors.white,fontSize: 40),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 130),
                                child: Text(text2,style: GoogleFonts.abel(color: Colors.white,fontSize: 40),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 100),
                                child: Text(text3,style: GoogleFonts.abel(color: Colors.white,fontSize: 40),),
                              ),
                              SizedBox(height: 10,),

                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(text4,style: GoogleFonts.abel(color: Colors.red,fontSize: 15,),),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 200,),


                        Container(
                          width: 500,
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white54,
                          ),



                          child: Form(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Text("RATES AND FEES",style: GoogleFonts.abel(fontSize: 18,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 10,),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: DropdownButtonFormField(
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconSize: 36,
                                        isExpanded: true,
                                        style: TextStyle(
                                            fontSize: 18
                                        ),
                                        hint: Text("Select a Country",style: GoogleFonts.abel(),),
                                        value: valueChoosen,
                                        onChanged: (newValue) {
                                          setState(() {
                                            valueChoosen = newValue.toString();
                                          });
                                        },
                                        items: country.map((valueItem) {
                                          return DropdownMenuItem(
                                            value: valueItem,
                                            child: Text(valueItem),
                                          );
                                        }).toList(),
                                      ),
                                    ),

                                    SizedBox(height: 20,),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            labelText: "Send ",
                                            hintText: "Amount to Send" ,
                                          ),


                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 20,),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            labelText: "Receive ",
                                            hintText: "Amount to Receive" ,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ElevatedButton(
                                        onPressed: (){},
                                        child: Text("Estimate Fees",style: GoogleFonts.abel(),),
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                                            ),
                                          ),
                                          minimumSize: MaterialStateProperty.all(Size(150.0, 50.0)), // Adjust width and height as needed
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              )
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(height: 50,),

                Column(
                  children: [

                    Text(text5,style: GoogleFonts.abel(fontSize: 40,fontWeight: FontWeight.w900,decoration:TextDecoration.underline),),
                    SizedBox(height:40 ,),
                    Text(text6,style: GoogleFonts.roboto(decoration:TextDecoration.underline,fontSize: 18,fontWeight:FontWeight.bold,),),
                    SizedBox(height:40 ,),
                    Text(text7,style: GoogleFonts.abel(fontSize: 35,),),
                    SizedBox(height:30 ,),
                    Text(text8,style: GoogleFonts.abel(fontSize: 20,),),
                    Text(text9,style: GoogleFonts.abel(fontSize: 20,),),
                  ],
                ),

                SizedBox(height:150 ,),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 400,
                          height: 600,
                          child: Column(
                            children: [
                              Image(image: AssetImage("assets/images/phone1.png")),
                            ],
                          ),
                        ),

                        SizedBox(width: 50,),

                        Container(
                          width: 600,
                          height: 350,
                          child: Column(
                            children: [
                              Text(text10,style: GoogleFonts.abel(fontSize: 30,),),
                              SizedBox(height: 20,),
                              Text(text11,style: GoogleFonts.abel(fontSize: 18,),),
                              SizedBox(height: 30,),
                              Text(text12,style: GoogleFonts.abel(fontSize: 18,fontWeight:FontWeight.bold),),

                              SizedBox(height: 20,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(onPressed: (){},
                                      child: Text( "Google Play"),

                                  ),
                                  SizedBox(width: 40,),
                                  ElevatedButton(onPressed: (){},
                                    child: Text( "App Store"),
                                  ),
                                ],
                              ),




                            ],


                          ),
                        ),
                        SizedBox(height: 500,)
                      ],

                    ),
                  ],


                ),
                Container(
                  color: Colors.grey,
                  height: 200,
                  child: Row(
                    children: [

                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
