/* 
姓名：杨振朋
日期 2019/08/24  16：36
作用：测量下载上传速度
 */
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class SpeedMethod {

  
  static var serverstarttime = new DateTime(2019, 7, 16); //接口创建时间
  static var nowdaytime = new DateTime.now(); //目前时间
  static String parametertime = nowdaytime
      .difference(serverstarttime)
      .inDays
      .toString(); //也就是上面两个时间差，用作接口参数
  String urlPath =
      'http://172.31.0.219:8082/SpeedTestServer/api/download?auth=Henu$parametertime'; //下载接口
  static String phonelocation; //提供给本地删除,和上传文件
  static String locationtodelete;//删除上传到服务器的文件所要用到的地址


  //获取最新的时间差
  getDiffyDay() {
    nowdaytime = new DateTime.now(); //目前时间
    parametertime = nowdaytime.difference(serverstarttime).inDays.toString();
    urlPath =
        'http://172.31.0.219:8082/SpeedTestServer/api/download?auth=Henu$parametertime';
  }











  // //对于Future必须要这样
  // backdown() async {
  //   double ll = await downloadFile();
  //   print(ll);
  //   return ll;
  // }

  //下载的方法
  Future<double> downloadFile() async {
    double speed = 0.0; //展示出来下载速度
    var time1 = new DateTime.now();
    await mainpart();
    var time2 = new DateTime.now();
    var difmseconds = time2.difference(time1).inMilliseconds.toString();
    speed = double.parse(
        ((250 / (double.parse(difmseconds) / 1000)) * 8).toString());
    return  double.parse(speed.toStringAsFixed(1)); //保留一位小数
  }
  //下载的主要方法
  mainpart() async {
    //这两行获取一个随机路径
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    Response response;
    Dio dio = new Dio();
    try {
      response = await dio.download(urlPath, tempPath + ".txt",
          onReceiveProgress: (int count, int total) {
        //进度
        print("${(count / total) * 100} %"); /* $count $total  */
      });
      print('downloadFile success---------${response.data}');
    } on DioError catch (e) {
      print('downloadFile error---------$e');
    }
    print('下载到手机地址是：' + tempPath + ".txt");
    phonelocation = tempPath + ".txt";
  }













// //对于Future必须要这样
//   backup() async {
//     double ll = await upload();
//     print(ll);
//     return ll;
//   }
  //上传的方法
  Future<double> uploadFile() async {
    double speed = 0.0; //记录上传速度
    var time1 = new DateTime.now();
    await mainstep();
    var time2 = new DateTime.now();
    var difmseconds = time2.difference(time1).inMilliseconds.toString();
    speed = double.parse(
        ((250 / (double.parse(difmseconds) / 1000)) * 8).toString());
        print(double.parse(speed.toStringAsFixed(1)));
    return double.parse(speed.toStringAsFixed(1)); //保留一位小数
  }
  //上传的主要方法
  mainstep() async {
    Dio dio = new Dio();
    Response response = await dio.post(
      "http://172.31.0.219:8082/SpeedTestServer/api/upload",
      data: FormData.from({
        "auth": "Henu$parametertime",
        "data": UploadFileInfo(File('$phonelocation'), 'cache.txt'),
      }),
      options: Options(headers: {"Content-Type": "multipart/form-data;"}),
      onSendProgress: (int sent, int total) {
        print("${(sent / total) * 100}+%");
      },
    );
    print(response.data.toString());
    var star = response.data.toString().indexOf('http://');
    var end = response.data
        .toString()
        .lastIndexOf(new RegExp('(http://|, message:)'));
    locationtodelete = response.data.toString().substring(star, end);
    print(locationtodelete);
  }






  //删除上传到服务器的文件和本地的文件
  delete() async {
    //删除服务器上的文件
    String url=locationtodelete;
    Dio dio = new Dio();
    Response response = await dio.post(
      "http://172.31.0.219:8082/SpeedTestServer/api/delete",
      data: FormData.from({
        "auth": "Henu$parametertime",
        "fileUrl": "$url",
      }),
      options: Options(headers: {"Content-Type": "multipart/form-data;"}),
    );
    print(response.data.toString());
    //删除本地文件
    Directory(phonelocation).delete(recursive: true).then((
        FileSystemEntity fileSystemEntity) {
      print('删除path' + fileSystemEntity.path);
    });
  }
}
