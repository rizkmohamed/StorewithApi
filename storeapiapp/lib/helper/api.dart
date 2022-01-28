import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  // get request
  Future<dynamic> get(
      {required String url, @required String? authtoken}) async {
    Map<String, String> headers = {};
    if (authtoken != null) {
      // add my headers
      headers.addAll({
        // 'Accept': 'application/json',
        'Authorization': 'Bearer $authtoken'
      });
    }
    http.Response response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a poroblem in statuscode = ${response.statusCode} ');
    }
  }

  //post >>>>>>>
  Future<dynamic> post({
    required String url,
    required dynamic body, // map of strings
    @required String? authtoken, // if auth is bearer token
    // required String? postmantoken // if need postmantoken
  }) async {
    // bearer token when changes in headers
    Map<String, String> headers = {};
    if (authtoken != null) {
      // add my headers
      headers.addAll({
        // 'Postman-Token': postmantoken!,
        // 'Accept': 'application/json',
        'Authorization': 'Bearer $authtoken'
      });
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is a poroblem in statuscode = ${response.statusCode} with body ${jsonDecode(response.body)} ');
    }
  }
// put >>>>>>>
  Future<dynamic> put({
    required String url,
    required dynamic body, // map of strings
    @required String? authtoken, // if auth is bearer token
    // required String? postmantoken // if need postmantoken
  }) async {
    // bearer token when changes in headers
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (authtoken != null) {
      // add my headers
      headers.addAll({
        // 'Postman-Token': postmantoken!,
        // 'Accept': 'application/json',
        'Authorization': 'Bearer $authtoken'
      });
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is a poroblem in statuscode = ${response.statusCode} with body ${jsonDecode(response.body)} ');
    }
  }
}
