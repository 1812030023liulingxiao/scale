import 'package:flutter/material.dart';
import 'about.dart';




class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  //判断是否选中第一行某个按钮
  List<bool> speed=[true,false,false];
  //判断是否选中第二行某个按钮
  List<bool> values=[true,false,false];
  List<int> dataone=[100,500,1000];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(21, 20, 36, 1),
          title: Text("SPEEDTEST",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color.fromRGBO(78, 201, 176, 1)),),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              //testing//////////////
              Container(
                alignment: Alignment(-1, 0),
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 5.0),
                child: Text(
                  'TESTING',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 21.0),
                ),
              ),
              //分割线///////////////
              // Container(
              //   decoration: new BoxDecoration(
              //       border: new Border(
              //           bottom: Divider.createBorderSide(context,
              //               width: 1.0, color: Colors.grey))),
              // ),
              //第一行///////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      width: 50.0,
                      height: 50.0,
                      alignment: Alignment(0, 0),
                      decoration: new BoxDecoration(
                          border: new Border(
                              bottom: Divider.createBorderSide(context,
                                  width: 3.0,
                                  color: Color.fromRGBO(21, 20, 36, 1)))),
                      child: Text(
                        "Units",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w100,
                        ),
                      )),
//Mbps
              Row(
                children: <Widget>[
                  Container(
                    width: 70.0,
                    height: 50.0,
                    alignment: Alignment(0, 0),
                  child:RaisedButton(
                    child:Container(
                      
                      height: 50.0,
                      alignment: Alignment(0, 0),                  
//下划线颜色控制
                      decoration: new UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 3.0,
                              color: speed[0] ? Color(0xff1FF8E8): Color.fromRGBO(21, 20, 36, 1)),
                          insets: EdgeInsets.fromLTRB(-16, 0, -16, 0)
                          ),
                      child: Text(
                        "Mbps",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    color: Color.fromRGBO(21, 20, 36, 1),
                    onPressed: () {
                      setState(() {
                       if(speed[0]==true){
                         setState(() {
                          speed[0]=false;
                          
                         });
                       }else{
                         setState(() {
                           speed[1]=false;
                           speed[2]=false;
                           speed[0]=true;
                           dataone[0]=100;
                           dataone[1]=500;
                           dataone[2]=1000;
                         });
                       }
                      });
                    },
                  ),
                    ),
//MB/s
                  Container(
                    width: 70.0,
                    height: 50.0,
                    alignment: Alignment(0, 0),
                    child:RaisedButton(
                      child: Container(
                        
                        height: 45.0,
                        alignment: Alignment(0, 0),
                        decoration: new UnderlineTabIndicator(
                            borderSide: BorderSide(
                                width: 3.0,
                                color: speed[1] ? Color(0xff1FF8E8) : Color.fromRGBO(21, 20, 36, 1)),
                             insets: EdgeInsets.fromLTRB(-16, 0, -16, 0)
                            ),
                        child: Text(
                          "MB/s",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      color: Color.fromRGBO(21, 20, 36, 1),
                      onPressed: () {
                        setState(() {
                       if(speed[1]==true){
                         setState(() {
                          speed[1]=false;
                          
                         });
                       }else{
                         setState(() {
                           speed[0]=false;
                           speed[2]=false;
                           speed[1]=true;
                           dataone[0]=10;
                           dataone[1]=50;
                           dataone[2]=100;
                         });
                       }
                      });
                      }
                    ),
                  ),
//kB/s
                  Container(
                    width: 70.0,
                    height: 50.0,
                    alignment: Alignment(0, 0),
                    child:RaisedButton(
                    child: Container(
                      
                      height: 50.0,
                      alignment: Alignment(0, 0),
                      decoration: new UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 3.0,
                              color:speed[2] ? Color(0xff1FF8E8): Color.fromRGBO(21, 20, 36, 1)),
                          insets: EdgeInsets.fromLTRB(-16, 0, -16, 0)),
                      child: Text(
                        "kB/s",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    color: Color.fromRGBO(21, 20, 36, 1),
                    onPressed: () {
                      setState(() {
                       if(speed[2]==true){
                         setState(() {
                          speed[2]=false;
                          
                         });
                       }else{
                         setState(() {
                           speed[0]=false;
                           speed[1]=false;
                           speed[2]=true;
                           dataone[0]=5000;
                           dataone[1]=10000;
                           dataone[2]=15000;
                         });
                       }
                      });
                    },
                  ),
                  ),
                ],
              ),
            ],
          ),
              //分割线///////////////
              Container(
                decoration: new BoxDecoration(
                    border: new Border(
                        bottom: Divider.createBorderSide(context,
                            width: 1.0, color: Color(0xff303030)))),
              ),
              //第二行/////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      width: 50.0,
                      height: 50.0,
                      alignment: Alignment(0, 0),
                      decoration: new BoxDecoration(
                          border: new Border(
                              bottom: Divider.createBorderSide(context,
                                  width: 3.0,
                                  color: Color.fromRGBO(21, 20, 36, 1)))),
                      child: Text(
                        "Scale",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w100,
                        ),
                      )),
//数字1                      
              Row(
                children: <Widget>[
                  Container(
                    width: 70.0,
                    height: 50.0,
                    alignment: Alignment(0, 0),
                    child:RaisedButton(
                    child: Container(
                      
                      height: 50.0,
                      alignment: Alignment(0, 0),
                      decoration: new UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 3.0,
                              color: values[0] ? Color(0xff1FF8E8) : Color.fromRGBO(21, 20, 36, 1)),
                          insets: EdgeInsets.fromLTRB(-16, 0, -16, 0)),
                      child: Text(
                        "${dataone[0]}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    color: Color.fromRGBO(21, 20, 36, 1),
                    onPressed: () {
                      setState(() {
                        if(values[0]==true){
                          setState(() {
                            values[0]=false;
                          });
                        }else{
                          setState(() {
                            values[0]=true;
                            values[1]=false;
                            values[2]=false;
                          });
                        } 
                      });
                    },
                  ),
                  ),          
//数字2
                  Container(
                    width: 70.0,
                    height: 50.0,
                    alignment: Alignment(0, 0),
                    child:RaisedButton(
                    child: Container(
                      
                      height: 50.0,
                      alignment: Alignment(0, 0),
                      decoration: new UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 3.0,
                              color: values[1] ? Color(0xff1FF8E8) : Color.fromRGBO(21, 20, 36, 1)),
                          insets: EdgeInsets.fromLTRB(-16, 0, -16, 0)),
                      child: Text(
                        "${dataone[1]}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    color: Color.fromRGBO(21, 20, 36, 1),
                    onPressed: () {
                      setState(() {
                       if(values[1]==true){
                         setState(() {
                          values[1]=false;
                         });
                       }else{
                         setState(() {
                           values[1]=true;
                           values[2]=false;
                           values[0]=false;
                         });
                       }
                      });
                    },
                  ),
                  ),
//数字3
                  Container(
                    width: 70.0,
                    height: 50.0,
                    alignment: Alignment(0, 0),
                    child:RaisedButton(
                    child: Container(
                      
                      height: 50.0,
                      alignment: Alignment(0, 0),
                      decoration: new UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 3.0,
                              color: values[2] ? Color(0xff1FF8E8) : Color.fromRGBO(21, 20, 36, 1)),
                          insets: EdgeInsets.fromLTRB(-16, 0, -16, 0)),
                      child: Text(
                        "${dataone[2]}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    color: Color.fromRGBO(21, 20, 36, 1),
                    onPressed: () {
                      setState(() {
                       if(values[2]==true){
                         setState(() {
                          values[2]=false;
                         });
                       }else{
                         setState(() {
                           values[2]=true;
                           values[1]=false;
                           values[0]=false;
                         });
                       }
                      });
                    },
                  ),
                  ),
                  
                ],
              ),
            ],
          ),

              //分割线///////////////
              Container(
                decoration: new BoxDecoration(
                    border: new Border(
                        bottom: Divider.createBorderSide(context,
                            width: 1.0, color: Color(0xff303030)))),
              ),
              /////////////////////
//关于
              RaisedButton(
                splashColor: Color.fromRGBO(78, 201, 176, 0.7),
                //水波纹颜色
                color: Color.fromRGBO(21, 20, 36, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("ABOUT",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                        )),
                    SizedBox(height: 60)
                  ],
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(
                      MaterialPageRoute(builder: (context) => AaboutPage()));
                },
                textColor: Colors.white,
              ),
              //分割线
              // Container(
              //   decoration: new BoxDecoration(
              //       border: new Border(
              //           bottom: Divider.createBorderSide(context,
              //               width: 1.0, color: Color(0xff303030)))),
              // ),
            ],
          ),
        ),


        backgroundColor: Color.fromRGBO(21, 20, 36, 1),
      ),);
  }


}