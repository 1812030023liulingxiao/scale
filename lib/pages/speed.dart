import 'package:flutter/material.dart';
import 'history.dart'; 
import 'setting.dart';
class SpeedPage extends StatelessWidget {
  const SpeedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          backgroundColor: Color.fromRGBO(21, 20, 36, 1),
          title:  Text(
              'S P E E D T E S T',
              style: TextStyle(fontWeight: FontWeight.w900,color: Color.fromRGBO(78, 201, 176, 1)),
            ),
          
      ),
      body:Container(
        width: 540,
        height: 960,
        color: Color.fromRGBO(25, 26, 47, 1),
        child: NEIBU()
        )
    );
  }  
}

class NEIBU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: <Widget>[
             Container(
               height: 50.0,
                 child:Icon(
                    Icons.file_download,
                    color: Color(0xff0EFEF7),
                    size: 25,
                  ),
                    alignment: Alignment(0, 0),
                ),
                  Text(
                          'DOWNLOAD',
                          style: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.w800,
                            ),
                        ),
                ]
              ),
           //upload
            Row(
              children: <Widget>[
            Container(
               height: 50.0,
                  child:Icon(
                    Icons.file_upload,
                    color: Color(0xffE775FF),
                    size: 25,
                  ),
                        alignment: Alignment(0, 0),
            ),
                      Text(
                          'UPLOAD',
                          style: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      
                    ],
                  )
          ],
        ),
 //测试数据row布局  
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              '521',
              style: TextStyle(
                color: Colors.white,
                 fontSize: 30,
                 fontWeight: FontWeight.w100,
                 ),
            ),
            Text(
              '520',
              style: TextStyle(
                color: Colors.white,
                 fontSize: 30,
                 fontWeight: FontWeight.w100,
                 ),
            ),
          ],
        ),
  ////ping-jitter-loss布局
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
       //ping     
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                   width: 300,
                    height: 100,
                    child: Stack(
                      children: <Widget>[
             //Icon
                        Align(
                          alignment: Alignment(-0.9, 0),
                          child: Icon(
                            Icons.swap_horiz,
                            size: 25,
                            color: Colors.blue,
                          ),
                        ),
              //text_ping
                        Align(
                            alignment: Alignment(-0.3, 0),
                            child: Text(
                              'Ping',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                            
                          ),
               //text_--ms           
                          Align(
                            alignment: Alignment(0.8, 0),
                            child: Text(
                              '32 ms',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                            
                          ),
              //'|'
                        Align(
                            alignment: Alignment(1, 0),
                            child: Text(
                              '|',
                              style:
                                  TextStyle(fontSize: 37, color: Colors.white),
                            )),
                      ],
                    )),
              ),
            ),
   //jitter
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                    width: 300,
                    height: 100,
                    child: Stack(
                      children: <Widget>[
                //Icon
                        Align(
                          alignment: Alignment(-0.95, 0),
                          child: Icon(
                            Icons.graphic_eq,
                            size: 25,
                            color: Color(0xff11fff3),
                          ),
                        ),
                //text_jitter   
                        Align(
                            alignment: Alignment(-0.3,0),
                            child: Text(
                              'Jitter',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ),
                //text_--ms
                            Align(
                            alignment: Alignment(0.8, 0),
                            child: Text(
                              '31 ms',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ),
                      ],
                    )),
              ),
            ),
    //Loss  
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                    width: 300,
                    height: 100,
                    child: Stack(
                      children: <Widget>[
                //'|'
                        Align(
                            alignment: Alignment(-1, 0),
                            child: Text(
                              '|',
                              style:
                                  TextStyle(fontSize: 37, color: Colors.white),
                            )
                          ),
                //Icon
                        Align(
                          alignment: Alignment(-0.7, 0),
                          child: Icon(
                            Icons.multiline_chart,
                            size: 25,
                            color: Colors.orange,
                          ),
                        ),
                //text_Loss
                        Align(
                            alignment: Alignment(0, 0),
                            child: Text(
                              'Loss',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ),
                //text_--%
                          Align(
                            alignment: Alignment(0.9, 0),
                            child: Text(
                              '0 %',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ),
                      ],
                    )),
              ),
            ),
          ],
        ),
        
//////////
        SizedBox(height: 414),
        //底部
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Color.fromRGBO(78, 201, 176, 0.5),
                  height: 80,
                  width: 120,
                  child: RaisedButton.icon(
                    label: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    splashColor: Color.fromRGBO(78, 201, 176, 0.7), //水波纹颜色
                    icon: Icon(
                      Icons.network_check,
                      size: 40,
                      color: Colors.grey,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)), //加了一个小圆角
                    onPressed: () {
                      Null;
                    },
                    color: Color.fromRGBO(78, 201, 176, 0.5)
                  ),
                ),
                Container(
                  color: Color.fromRGBO(21, 20, 36, 1),
                  height: 80,
                  width: 120,
                  child: RaisedButton.icon(
                    label: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    splashColor: Color.fromRGBO(78, 201, 176, 0.7), //水波纹颜色
                    icon: Icon(
                      Icons.history,
                      size: 40,
                      color: Colors.grey,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)), //加了一个小圆角
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HistoryPage()));
                    },
                    color: Color.fromRGBO(21, 20, 36, 1),
                  ),
                ),
                Container(
                  color: Color.fromRGBO(21, 20, 36, 1),
                  height: 80,
                  width: 120,
                  child: RaisedButton.icon(
                    label: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    splashColor: Color.fromRGBO(78, 201, 176, 0.7), //水波纹颜色
                    icon: Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.grey,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)), //加了一个小圆角
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SettingPage()));
                    },
                 color: Color.fromRGBO(21, 20, 36, 1),
                  ),
                ),
              ],
            ),
      ],
    );
  }
}