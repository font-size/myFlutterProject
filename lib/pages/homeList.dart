// lesson list
import 'package:flutter/material.dart';
import 'package:axing/pages/channelDetail.dart' as channelDetail;

class myLesson extends StatelessWidget {
  // final List iconList = [];
  final List lessonList = [{
    'name': 'flutter组件大全',
    'id': '1',
    'url':'route1'
    },
    {
      'name': 'flutter介绍',
      'id': '2',
      'url':'route2'
    } ,
    {
      'name': 'Dart基础',
      'id': '3',
      'url':'route3'
    }];

  @override
  Widget build(BuildContext context) {
    // 下划线widget预定义以供复用。
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(25.0),
      children: _listView(context),
    );
  }
  List<Widget> _listView(context){
    return lessonList.map((f)=>
    Container(
      margin: EdgeInsets.only(top: 20.0), //容器外填充
      constraints: BoxConstraints.tightFor(height: 70.0), //卡片大小
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0), //容器外填充
              child: FlutterLogo(
                size: 40,
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0), //容器外填充
              child: FlatButton(
                child: Text(
                  f['name'],
                  style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  //导航到新路由
                  Navigator.push( context,
                      MaterialPageRoute(builder: (context) {
                        return channelDetail.myApp();
                      }));
                },
              //   // style: Theme.of(context).textTheme.headline5),
            )
           )
          ],
        )
      )
    ).toList();
  }
}