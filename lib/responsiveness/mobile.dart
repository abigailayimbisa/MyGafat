import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gafat/animated.dart';
import 'package:gafat/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../desktop_pages/login.dart';
import '../desktop_pages/sign_up.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {

  String? valueChoosen;
  List<String> country = [
    "Ghana",
    "Nigeria",
  ];

  List<Widget> container = [
    Container(
      color: Colors.white,
      child: Column(
        children: [
          Image(image: AssetImage("assets/images/one.png")),
          SizedBox(height: 20,),
          Text("REGISTER OR LOGIN",style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),
          )
        ],
      ),
    ),

    Container(
      color: Colors.white,
      child: Column(
        children: [
          Image(image: AssetImage("assets/images/two.png")),
          SizedBox(height: 20,),
          Text("SELECT A RECEIVER",style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),
          )
        ],
      ),
    ),

    Container(
      color: Colors.white,
      child: Column(
        children: [
          Image(image: AssetImage("assets/images/three.png")),
          SizedBox(height: 20,),
          Text("CHOOSE YOUR PAYMENT METHOD",
            style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),
          )
        ],
      ),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
          actions: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: ElevatedButton(
            //         onPressed: (){
            //
            //           _showLoginDialog(context);
            //
            //         },
            //         child: Text("Log In",style: GoogleFonts.abel(fontSize: 15),),
            //         style: ButtonStyle(
            //           backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade300),
            //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //             RoundedRectangleBorder(
            //
            //               borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
            //             ),
            //           ),
            //           minimumSize: MaterialStateProperty.all(Size(150.0, 50.0)), // Adjust width and height as needed
            //         ),
            //       ),
            //     ),
            //
            //     SizedBox(width: 20,),
            //
            //
            //     // Padding(
            //     //   padding: const EdgeInsets.all(8.0),
            //     //   child: ElevatedButton(
            //     //     onPressed: (){
            //     //       _showSignupDialog(context);
            //     //     },
            //     //     child: Text("Sign Up",style: GoogleFonts.abel(fontSize: 15),),
            //     //     style: ButtonStyle(
            //     //       backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
            //     //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //     //         RoundedRectangleBorder(
            //     //           borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
            //     //         ),
            //     //       ),
            //     //       minimumSize: MaterialStateProperty.all(Size(150.0, 50.0)), // Adjust width and height as needed
            //     //     ),
            //     //   ),
            //     // ),
            //   ],
            // ),

          ],
        ),
        drawer: Drawer(

          child: ListView(

            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),

              ),


              ListTile(
                title: const Text('Send Money'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Track + Receive'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Find a Location'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Pay Bills'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Help Center'),
                onTap: () {},
              ),

            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(

                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/2.jpg"))
                ),

                child: Row(
                  children: [
                    Container(
                      width: 300,
                      height: 250,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(text1,style: GoogleFonts.abel(color: Colors.white,fontSize: 20),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(text2,style: GoogleFonts.abel(color: Colors.white,fontSize: 20),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(text3,style: GoogleFonts.abel(color: Colors.white,fontSize: 20),),
                          ),
                          SizedBox(height: 5,),

                          Container(
                            height: 100,
                            width: 200,
                            color: transparentBlack,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(text4,style: GoogleFonts.abel(color: Colors.red,fontSize: 15,),
                                                        ),
                            ),
                          ),

                        ],

                      ),
                    ),

                  ],

                ),

              ),


              SizedBox(height: 50,),



              //box constraints

              ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 500,
                  ),
                  child: Container(
                width: 400,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade100,
                ),

                child: Form(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text("RATES AND FEES",style: GoogleFonts.abel(fontSize: 18,fontWeight: FontWeight.bold),),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButtonFormField(
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 30,
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
                            padding: const EdgeInsets.all(12.0),
                            child: ElevatedButton(
                              onPressed: (){},
                              child: Text("Estimate Fees",style: GoogleFonts.abel(),),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all(Size(140.0, 40.0)), // Adjust width and height as needed
                              ),
                            ),
                          ),

                        ],
                      ),
                    )
                ),
              ),
              ),



              SizedBox(height: 100,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [

                    Text(text5,style: GoogleFonts.abel(fontSize: 20,fontWeight: FontWeight.w900,decoration:TextDecoration.underline),),
                    SizedBox(height:30 ,),
                    Text(text6,style: GoogleFonts.roboto(decoration:TextDecoration.underline,fontSize: 12,fontWeight:FontWeight.bold,),),
                    SizedBox(height:30 ,),
                    Text(text7,style: GoogleFonts.abel(fontSize: 20,),),

                    Text(text8,style: GoogleFonts.abel(fontSize: 15,),),
                    Text(text9,style: GoogleFonts.abel(fontSize: 15,),),
                  ],
                ),
              ),

              SizedBox(height: 100,),

              Column(
                children: [
                  Container(
                    width: 300,
                    height: 400,
                    child: Column(
                      children: [
                        AnimatedPhoneImage(),
                      ],
                    ),
                  ),

                  Container(
                    width: 600,
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
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
                  ),

                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/money1.webp"))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text("TRANSFER MONEY TO FAMILY AND FRIENDS",
                            style: GoogleFonts.abel(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.white),
                          ),
                          SizedBox(height: 10,),

                          ElevatedButton(onPressed: (){}, child: Text("GAFAT CASH"),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                                ),
                              ),
                              minimumSize: MaterialStateProperty.all(Size(150.0, 50.0)), // Adjust width and height as needed
                            ),

                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Send Money Online from Ghana to Nigeria and vice versa in 3 Steps:",
                          style: GoogleFonts.abel(fontSize: 30,fontWeight:FontWeight.bold),),
                      ],
                    ),
                  ),



                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 250,
                          width: 400,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("assets/images/one.png")),
                              SizedBox(height: 10,),
                              Text("REGISTER OR LOGIN",style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 250,
                          width: 400,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("assets/images/two.png")),
                              SizedBox(height: 10,),
                              Text("SELECT A RECEIVER",style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 250,
                          width: 400,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("assets/images/three.png")),
                              SizedBox(height: 10,),
                              Text("CHOOSE YOUR PAYMENT METHOD",style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),


              SizedBox(height: 20,),


              Container(
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/ng.jpeg"))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text("TRANSFER MONEY TO FAMILY AND FRIENDS",
                        style: GoogleFonts.abel(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),


              SizedBox(height: 100,),
              
              Container(
                color: Colors.grey,
                height: 200,
                child: const Row(
                  children: [
                    Column(

                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



void _showLoginDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const AlertDialog(
        backgroundColor: Colors.transparent,
        content: SizedBox(
          height: 400,
          width: 600,
          child: Login(),
        ),
      );
    },
  );
}

void _showSignupDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const AlertDialog(
        backgroundColor: Colors.transparent,
        content: SingleChildScrollView(
          child: SizedBox(
            height: 600,
            width: 600,
            child: Sign_up(),
          ),
        ),
      );
    },
  );
}

