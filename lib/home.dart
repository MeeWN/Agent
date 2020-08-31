
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {

  @override
  Widget build(BuildContext context) => MaterialApp(
      home: Scaffold(
           body: CustomScrollView(slivers: [
            SliverAppBar(
                pinned: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset("assets/bg.png"
                  ,fit: BoxFit.cover
                  )),
                ),
             SliverToBoxAdapter(
              child: Container(
              height: 350,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 5),    
                    Row(
                      children: [
                        Text('Agent Name', 
                          style: TextStyle(fontSize: 30)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Image.asset("assets/circle.png"),
                        )
                      ]),
                    Row(
                      children: [
                        RatingBar(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          unratedColor: Colors.grey,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.blueAccent,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        SizedBox(width: 10,),
                        Text("(32)")
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Text('Open', style: TextStyle(
                          fontSize: 20,
                          color: Colors.green
                        )),
                        SizedBox(width: 10),
                        Icon(Icons.access_time,
                          color: Colors.grey,),
                        SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text('11 Am - 4 Pm . 500 m', 
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey)),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    ButtonTheme(
                    child: ButtonBar(
                      buttonPadding: EdgeInsets.all(0),
                      alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          minWidth: 100,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          onPressed: (){},
                          child: Text('Overview',style: TextStyle(color: Colors.white),),
                          color: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                                ),
                          ),
                        ),
                        FlatButton(
                          minWidth: 100,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          onPressed: (){},
                          child: Text('Fee Rates',style: TextStyle(color: Colors.black)),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                                ),
                          ),
                        ),
                        FlatButton(
                          minWidth: 100,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          onPressed: (){},
                          child: Text('Reviews',style: TextStyle(color: Colors.black)),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.monetization_on),
                        SizedBox(width: 30,),
                        Text("Transaction Availability",
                          style: TextStyle(fontSize: 16),)
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 55,),
                        Text("Deposit:",style: TextStyle(fontSize: 16,color: Colors.grey)),
                        SizedBox(width: 50,),
                        Text("1,500,000 THB",style: TextStyle(fontSize: 16))
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 55,),
                        Text("Withdraw:",style: TextStyle(fontSize: 16,color: Colors.grey)),
                        SizedBox(width: 50,),
                        Text("500,000 THB",style: TextStyle(fontSize: 16))
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  )
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 30,),
                      Text("210-123-345",style: TextStyle(fontSize: 16)),
                    ],
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  )
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(width: 30,),
                          Text("Open",style: TextStyle(fontSize: 16,color: Colors.green)),
                          SizedBox(width: 10,),
                          Text("Mon - Fri,11 AM - 4 PM",style: TextStyle(fontSize: 16)),
                          
                        ],
                      ),
                    SizedBox(height: 10,),
                   
                    Padding(
                      padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                      child: Text("Must reserve before uses service",style: TextStyle(fontSize: 14 , color: Colors.grey)),
                    ),
                    ],
                  ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  )
                ),
              ),
            ),
             SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.place),
                          SizedBox(width: 30,),
                         Container(
                              width: 150,
                              child: Text("123/45 Maple Building,Financial District,Pathumwan,Bangkok 10110",
                              style: TextStyle(fontSize: 16,))
                              ),
                         SizedBox(width: 30,), 
                         Image.asset("assets/map.png")
                          
                        ],
                      ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Container(
                        width: 160,
                        child: RaisedButton(
                          color: Colors.blueAccent,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                                ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.directions, color: Colors.white,),
                              SizedBox(width: 10,),
                              Text('Get Direction', style: TextStyle(fontSize: 16, color: Colors.white),)
                            ],
                          ),
                          
                        ),
                      ),
                    )  
                    ],
                  ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  )
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Row(
                    children: [
                      Icon(Icons.mail),
                      SizedBox(width: 30,),
                      Text("cashexpress@xone.com",style: TextStyle(fontSize: 16)),
                    ],
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  )
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.error),
                          SizedBox(width: 30,),
                          Text("Service Conditions",style: TextStyle(fontSize: 16)),
                        ],
                ),
                SizedBox(height: 10,),
                 Column(
                     children: [ 
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("- Deduct service charges in advance after ",style: TextStyle(fontSize: 16,color: Colors.grey)),
                        ),
                        Row(
                          children: [         
                            SizedBox(width: 65,), 
                            Text("confirming the booking.",style: TextStyle(fontSize: 16,color: Colors.grey)),
                            Text("See rate.",style: TextStyle(fontSize: 16,color: Colors.blueAccent))
                          ],
                        ),              
                     ],
                   ),
                SizedBox(height: 5,),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                   child: Text("- Must have a fine for late arrival.",style: TextStyle(fontSize: 16,color: Colors.grey)),
                 ),
                SizedBox(height: 5,),
                Padding(
                   padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                   child: Text("- Must have a fine for cancellation.",style: TextStyle(fontSize: 16,color: Colors.grey)),
                 ),
                SizedBox(height: 5,),
                Padding(
                   padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                   child: Text("- Accept only local currency",style: TextStyle(fontSize: 16,color: Colors.grey)),
                 ),
                Container(
                        padding: EdgeInsets.fromLTRB(80, 20, 0, 20),
                        width: 300,
                        child: RaisedButton(
                          color: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                                ),
                          ),
                          onPressed: (){},
                          child:     
                              Text('Book Deposit', style: TextStyle(fontSize: 16, color: Colors.white),)     
                          ),   
                        ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chat,color: Colors.blueAccent,),
                    SizedBox(width: 20,),
                    Text("Chat",style: TextStyle(fontSize: 16,),),
                  ],
                ) 
                      
                    ],
                  ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  )
                ),
              ),
            ),
          ]),
        ),
      );
}