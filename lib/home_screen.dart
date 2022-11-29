import 'package:find/widgets/button.dart';
import 'package:find/widgets/main_logo.dart';
import 'package:find/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(237, 245, 245, 245),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                // appbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // main container

                    MainLogo(),

                    //text logo
                    Image.asset(
                      'assets/findAJob.png',
                      fit: BoxFit.contain,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: Image(
                        image: AssetImage(
                          'assets/placeholder.jpg',
                        ),
                        fit: BoxFit.contain,
                      ),
                    )
                    // profile image
                  ],
                ),
                // header
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Find A Job Easily',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // search bar
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFieldContainer(
                                  hint: 'Find A Job',
                                )),
                          ),
                          Container(
                              // color: Color(0xFFD93030),
                              width: 150,
                              child: TextFieldContainer(
                                hint: 'location',
                              )),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFDACACB)),
                        child: Icon(Icons.search),
                      )
                    ],
                  ),
                ),

                // job listing containers
                Expanded(
                    child: SingleChildScrollView(
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // company logo
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage('assets/company.png'))),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              // job title
                              Text('UI / UX Designer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              // job description
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'The user experience matters alot. The user experience matters alot, The user experience matters alot, The user experience matters alot The user experience matters alot',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      letterSpacing: 1.50, color: Colors.black),
                                ),
                              ),
                              // button row
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Button(
                                    text: 'Full Time',
                                    textColor: 0xFFD93030,
                                    backgroundColor: 0xFFDACACB,
                                  ),
                                  Button(
                                    text: 'Min 1 Year',
                                    textColor: 0xFFD93030,
                                    backgroundColor: 0xFFDACACB,
                                  ),
                                  Button(
                                    text: 'Senior Level',
                                    textColor:
                                        index.isEven ? 0xFFD93030 : 0xFFDACACB,
                                    backgroundColor:
                                        index.isEven ? 0xFFDACACB : 0xFFD93030,
                                  )
                                ],
                              ),
                              // apply button
                              SizedBox(
                                height: 20,
                              ),
                              Button(
                                text: 'Apply Now',
                                textColor:
                                    index.isEven ? 0xFFFFFFFF : 0xFFD93030,
                                backgroundColor:
                                    index.isEven ? 0xFFD93030 : 0xFFFFFFFF,
                                width: 200,
                                height: 40,
                              )
                            ],
                          ),
                        );
                      }),
                )),
              ],
            )),
      ),
    );
  }
}
