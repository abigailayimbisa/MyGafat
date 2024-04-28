
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gafat/animated.dart';
import 'package:gafat/desktop_pages/login.dart';
import 'package:gafat/desktop_pages/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gafat/constants.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  String? valueChoosen;
  List<String> country = [
    "Ghana",
    "Nigeria",
  ];

  List<Widget> container = [
    Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/one.png")),
          SizedBox(height: 20,),
          Text("CHOOSE YOUR PAYMENT METHOD",
            style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),
          )
        ],
      ),
    ),

    Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/two.png")),
          SizedBox(height: 20,),
          Text("CHOOSE YOUR PAYMENT METHOD",
            style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),
          )
        ],
      ),
    ),

    Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            height: 100,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
          ),
          actions: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child:
            //
            //       ElevatedButton(
            //         onPressed: () {
            //           _showLoginDialog(context);
            //         },
            //         child: Text(
            //           "Log In",
            //           style: GoogleFonts.abel(fontSize: 15),
            //         ),
            //         style: ButtonStyle(
            //           backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade300), // Set background color to green
            //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //             RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(20.0),
            //             ),
            //           ),
            //           minimumSize: MaterialStateProperty.all(Size(150.0, 50.0)),
            //         ),
            //       ),
            //
            //     ),
            //     SizedBox(width: 20,),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: ElevatedButton(
            //         onPressed: () {
            //           _showSignupDialog(context);
            //         },
            //         child: Text(
            //           "Sign Up",
            //           style: GoogleFonts.abel(fontSize: 15),
            //         ),
            //         style: ButtonStyle(
            //           backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
            //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //             RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(20.0),
            //             ),
            //           ),
            //           minimumSize: MaterialStateProperty.all(Size(150.0, 50.0)),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
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
                            AnimatedPhoneImage(),
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



              SizedBox(height: 50,),

              Container(
                height: 200,
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
                        style: GoogleFonts.abel(fontSize: 40,fontWeight:FontWeight.bold,color: Colors.white),
                      ),
                      SizedBox(height: 30,),

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

              SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Send Money Online from Ghana to Nigeria and vice versa in 3 Steps:",
                    style: GoogleFonts.abel(fontSize: 35,fontWeight:FontWeight.bold),),
                ],
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  // color: Colors.grey.shade300,
                  // width: double.infinity,
                  height: 250,

                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        crossAxisSpacing: 20,
                      ),
                      itemBuilder: (context,index){
                        return Container(
                          child: container[index],
                        );
                      }
                  ),


                ),
              ),

              SizedBox(height: 100,),

              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/ng.jpeg"))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                        Text("TRANSFER MONEY TO FAMILY AND FRIENDS",
                        style: GoogleFonts.abel(fontSize: 40,fontWeight:FontWeight.bold,color: Colors.white),
                      ),
                      SizedBox(height: 50,),

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


              SizedBox(height: 50,),



              // CONTACT US

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("CONTACT US",style: GoogleFonts.abel(fontSize: 35,fontWeight:FontWeight.bold),),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:
                    Container(
                      width: 500,
                      height: 300,
                      color: Colors.grey,
                      child:  Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            IconTheme(
                              data: IconThemeData(size: 30),
                              child: Icon(Icons.location_on),
                            ),
                            Text("Commerical Street,Opposite Vodafone Office,Bolga", style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),),
                            SizedBox(height: 10),
                            IconTheme(
                              data: IconThemeData(size: 30),
                              child: Icon(Icons.mail_sharp),
                            ),
                            Text("info@kologsoft.com",style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),),
                            SizedBox(height: 10),
                            IconTheme(
                              data: IconThemeData(size: 30),
                              child: Icon(Icons.phone),
                            ),
                            Text("+233 553354349",style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 600,
                      height: 500,
                      color: Colors.grey,
                      child: Column(
                        children: [
                          
                        ],

                      ),
                    ),
                  ),
                ],

              ),


              SizedBox(height: 100,),


              // FOOTER SECTION

              Container(
                color: Colors.grey.shade300,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("KologSoft",style: GoogleFonts.abel(fontSize: 20,fontWeight:FontWeight.bold),),
                          Text("Commercial Street",style: GoogleFonts.abel(fontSize:15),),
                          Text("Upper East Bolga",style: GoogleFonts.abel(fontSize:15),),
                          Text("Ghana",style: GoogleFonts.abel(fontSize:15),),
                          Text("Phone : +2335847569",style: GoogleFonts.abel(fontSize:15),),
                          Text("email : info@kologsoft.com",style: GoogleFonts.abel(fontSize:15),),
                        ],
                      ),
                    ],
                  ),
                ),
              )

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




