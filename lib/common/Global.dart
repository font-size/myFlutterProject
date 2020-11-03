import 'package:flutter/material.dart';

// 提供五套可选主题色
const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

String baseUrl = 'http://www.mhxy5kw.com';
String replaceUrl = 'http://www.mhxy5kw.com/u/cms';

String contentDetailApi = 'http://www.mhxy5kw.com/content/'; // 12
String channelDetailApi = 'http://www.mhxy5kw.com/channel/get'; // ?id=1747
String contentListApi = 'http://www.mhxy5kw.com/content/list/'; // ?channelId=1747
String channelListApi= 'http://www.mhxy5kw.com/channel/list/'; // ?parentId=1747
