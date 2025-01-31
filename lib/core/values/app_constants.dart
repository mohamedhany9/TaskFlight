import 'dart:convert';

class AppConstants{

  static const String baseUrl ="https://aquamarine-oryx-196259.hostingersite.com";

  static String consumerKey = 'ck_aadcc62ba031aae3184bc3a40188c3e60acfdb1b';
  static String consumerSecret = 'cs_90870dd5e202087ecf8fa650597b1342e3f8001d';

  // Create Basic Auth token
  static String basicAuth = 'Basic ' + base64Encode(utf8.encode('$consumerKey:$consumerSecret'));
}